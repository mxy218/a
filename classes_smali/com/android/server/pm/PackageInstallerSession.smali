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

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 311
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 323
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V
    .registers 38

    .line 419
    move-object v0, p0

    move/from16 v1, p10

    move-object/from16 v2, p11

    move-wide/from16 v3, p12

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p19

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 201
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 203
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 220
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 222
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 225
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 227
    const/high16 v8, -0x40800000  # -1.0f

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 231
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 233
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 235
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 237
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 239
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 241
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 245
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 253
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 255
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 268
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    .line 279
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 298
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 300
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 302
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 304
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 332
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v9, p0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 420
    move-object v9, p1

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 421
    move-object v9, p2

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 422
    move-object v9, p3

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 423
    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 424
    new-instance v9, Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v11, p5

    invoke-direct {v9, v11, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 425
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 427
    move/from16 v9, p7

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 428
    move/from16 v9, p8

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 429
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 430
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 431
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 432
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 433
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 434
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 435
    iput-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 436
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 437
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 438
    if-eqz v7, :cond_bc

    .line 439
    array-length v1, v7

    move v3, v8

    :goto_b0
    if-ge v3, v1, :cond_bc

    aget v4, v7, v3

    .line 440
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    .line 443
    :cond_bc
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 445
    iget-boolean v1, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_d8

    const/4 v1, 0x1

    if-nez v5, :cond_c9

    move v2, v1

    goto :goto_ca

    :cond_c9
    move v2, v8

    :goto_ca
    if-nez v6, :cond_cd

    move v8, v1

    :cond_cd
    if-eq v2, v8, :cond_d0

    goto :goto_d8

    .line 446
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_d8
    :goto_d8
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 451
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 452
    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 453
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 454
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 455
    move/from16 v1, p24

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 456
    nop

    .line 457
    if-eqz p25, :cond_f6

    move-object/from16 v1, p25

    goto :goto_f8

    :cond_f6
    const-string v1, ""

    :goto_f8
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 458
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 130
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleCommit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    .line 130
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .registers 10
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

    .line 1847
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_96

    .line 1851
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

    .line 1852
    :cond_20
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified package "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1856
    :cond_46
    :goto_46
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_72

    .line 1861
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p2, p2, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 1865
    return-void

    .line 1862
    :cond_5b
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signatures are inconsistent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 1857
    :cond_72
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version code "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1848
    :cond_96
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRootLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 853
    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_22

    .line 854
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_22
    :goto_22
    return-void
.end method

.method private assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
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

    .line 1099
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string v2, " and session "

    const-string v3, "Multipackage Inconsistency: session "

    const/16 v4, -0x78

    if-ne v0, v1, :cond_43

    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 1113
    return-void

    .line 1107
    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " have inconsistent rollback settings"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1100
    :cond_43
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " have inconsistent staged settings"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertMultiPackageConsistencyLocked(Ljava/util/List;)V
    .registers 3
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

    .line 1077
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 1081
    if-nez v0, :cond_13

    .line 1082
    goto :goto_4

    .line 1084
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1085
    goto :goto_4

    .line 1086
    :cond_17
    return-void
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 864
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

    .line 865
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 868
    goto :goto_6

    .line 866
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
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

    .line 870
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 873
    goto :goto_27

    .line 871
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_40
    return-void
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 580
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_8

    .line 583
    return-void

    .line 581
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after commit"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 587
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_20

    .line 590
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 593
    return-void

    .line 591
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after destruction"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before prepared"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 572
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_8

    .line 575
    return-void

    .line 573
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after sealing"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5

    .line 2402
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private cleanStageDir()V
    .registers 6

    .line 2325
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2326
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 2327
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v4, v3}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2326
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2331
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

    .line 2333
    goto :goto_2b

    .line 2332
    :catch_2a
    move-exception v0

    .line 2335
    :cond_2b
    :goto_2b
    return-void
.end method

.method private closeInternal(Z)V
    .registers 3

    .line 2064
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2065
    if-eqz p1, :cond_8

    .line 2066
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2069
    :cond_8
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    .line 2070
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_18

    .line 2072
    if-nez p1, :cond_17

    .line 2073
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2075
    :cond_17
    return-void

    .line 2070
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private commitNonStagedLocked(Ljava/util/List;)V
    .registers 9
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

    .line 1311
    nop

    .line 1312
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v0

    .line 1313
    if-nez v0, :cond_8

    .line 1314
    return-void

    .line 1316
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    .line 1318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1319
    nop

    .line 1320
    nop

    .line 1321
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    move v2, v1

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3d

    .line 1322
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 1324
    nop

    .line 1325
    :try_start_2c
    invoke-direct {v6}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v6

    .line 1326
    if-eqz v6, :cond_35

    .line 1327
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2c .. :try_end_35} :catch_36

    .line 1332
    :cond_35
    goto :goto_3a

    .line 1329
    :catch_36
    move-exception v4

    .line 1330
    nop

    .line 1331
    move-object v5, v4

    move v4, v1

    .line 1321
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1334
    :cond_3d
    if-nez v4, :cond_4d

    .line 1336
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v0, v5, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1337
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-interface {p1, v3, v0, v1, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4a} :catch_4b

    .line 1339
    goto :goto_4c

    .line 1338
    :catch_4b
    move-exception p1

    .line 1340
    :goto_4c
    return-void

    .line 1342
    :cond_4d
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/util/List;)V

    .line 1343
    goto :goto_58

    .line 1344
    :cond_53
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 1346
    :goto_58
    return-void
.end method

.method private computeProgressLocked(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 635
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd  # 0.2f

    mul-float/2addr v1, v3

    .line 636
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 639
    if-nez p1, :cond_2d

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL  # 0.01

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_36

    .line 640
    :cond_2d
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 643
    :cond_36
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 10
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

    .line 1955
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 1956
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1957
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1955
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1961
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1962
    const-string v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1963
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

    .line 1964
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1968
    :try_start_56
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5f
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5f} :catch_a7

    .line 1971
    nop

    .line 1972
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1977
    goto :goto_20

    .line 1975
    :cond_8a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to rename "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1969
    :catch_a7
    move-exception p0

    .line 1970
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to chmod "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1965
    :cond_bf
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to copy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1978
    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files into "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .registers 6
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

    .line 1928
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1930
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_1b} :catch_1d

    .line 1933
    nop

    .line 1934
    goto :goto_4

    .line 1931
    :catch_1d
    move-exception p1

    .line 1932
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1

    .line 1935
    :cond_23
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".removed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 683
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 688
    nop

    .line 689
    return-void

    .line 681
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_44} :catch_44

    .line 686
    :catch_44
    move-exception p1

    .line 687
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private destroyInternal()V
    .registers 4

    .line 2300
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2301
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 2302
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2303
    :cond_12
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2306
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

    .line 2307
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 2308
    goto :goto_1a

    .line 2309
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

    .line 2310
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 2311
    goto :goto_30

    .line 2312
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_5b

    .line 2316
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_5a

    .line 2318
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4b .. :try_end_58} :catch_59

    .line 2320
    goto :goto_5a

    .line 2319
    :catch_59
    move-exception v0

    .line 2322
    :cond_5a
    :goto_5a
    return-void

    .line 2312
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 2198
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_3
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 2200
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 2202
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 2203
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2204
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_60

    .line 2206
    if-eqz v1, :cond_26

    .line 2210
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2211
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2212
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2213
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2214
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2215
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2217
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2220
    :cond_26
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    move p1, v0

    goto :goto_2d

    :cond_2c
    move p1, p2

    .line 2224
    :goto_2d
    if-eqz p3, :cond_37

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_38

    :cond_37
    move p2, v0

    .line 2225
    :cond_38
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result p2

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 p3, 0x800000

    and-int/2addr p2, p3

    if-nez p2, :cond_5a

    .line 2227
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p3

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 2230
    :cond_5a
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2231
    return-void

    .line 2204
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 719
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 720
    const-string/jumbo v7, "openWrite"

    invoke-direct {v1, v7}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 722
    sget-boolean v7, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_27

    .line 723
    new-instance v7, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v7}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 724
    nop

    .line 725
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v7

    move-object v11, v9

    goto :goto_34

    .line 727
    :cond_27
    nop

    .line 728
    new-instance v7, Landroid/os/FileBridge;

    invoke-direct {v7}, Landroid/os/FileBridge;-><init>()V

    .line 729
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v7

    move-object v10, v9

    .line 732
    :goto_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v7

    .line 733
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_13b

    .line 737
    :try_start_39
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_39 .. :try_end_43} :catch_135

    .line 743
    :try_start_43
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_119

    .line 745
    :try_start_48
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    nop

    .line 750
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v8, Landroid/system/OsConstants;->O_CREAT:I

    sget v12, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v8, v12

    const/16 v12, 0x1a4

    invoke-static {v0, v8, v12}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v13

    .line 752
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 756
    const-wide/16 v14, 0x0

    if-eqz v7, :cond_7f

    cmp-long v0, v4, v14

    if-lez v0, :cond_7f

    .line 757
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 758
    invoke-static {v6}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v6

    .line 757
    invoke-virtual {v0, v13, v4, v5, v6}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 761
    :cond_7f
    cmp-long v0, v2, v14

    if-lez v0, :cond_88

    .line 762
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v13, v2, v3, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 765
    :cond_88
    if-eqz p6, :cond_fb

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_a1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_a1

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_99

    goto :goto_a1

    .line 772
    :cond_99
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Reverse mode only supported from shell or system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a1
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_a1} :catch_135

    .line 770
    :cond_a1
    :goto_a1
    nop

    .line 781
    :try_start_a2
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v14, v15}, Landroid/system/Int64Ref;-><init>(J)V

    .line 782
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;

    invoke-direct {v8, v1, v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V

    move-object v3, v13

    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v8}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_da

    .line 791
    :try_start_b9
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 792
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c2
    .catch Landroid/system/ErrnoException; {:try_start_b9 .. :try_end_c2} :catch_135

    .line 797
    :try_start_c2
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_cc

    .line 798
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 800
    :cond_cc
    invoke-virtual {v11}, Landroid/os/FileBridge;->forceClose()V

    .line 801
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    :goto_d4
    monitor-exit v2

    .line 804
    nop

    .line 805
    return-object v9

    .line 803
    :catchall_d7
    move-exception v0

    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_c2 .. :try_end_d9} :catchall_d7

    :goto_d9
    :try_start_d9
    throw v0

    .line 791
    :catchall_da
    move-exception v0

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 792
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 796
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e4
    .catch Landroid/system/ErrnoException; {:try_start_d9 .. :try_end_e4} :catch_135

    .line 797
    :try_start_e4
    sget-boolean v3, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v3, :cond_ee

    .line 798
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 800
    :cond_ee
    invoke-virtual {v11}, Landroid/os/FileBridge;->forceClose()V

    .line 801
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    :goto_f6
    monitor-exit v2

    goto :goto_d9

    :catchall_f8
    move-exception v0

    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_e4 .. :try_end_fa} :catchall_f8

    goto :goto_d9

    .line 806
    :cond_fb
    :try_start_fb
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_109

    .line 807
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v13}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 808
    invoke-virtual {v10}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 810
    :cond_109
    invoke-virtual {v11, v13}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 811
    invoke-virtual {v11}, Landroid/os/FileBridge;->start()V

    .line 812
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 745
    :catchall_119
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 738
    :cond_11e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_135
    .catch Landroid/system/ErrnoException; {:try_start_fb .. :try_end_135} :catch_135

    .line 815
    :catch_135
    move-exception v0

    .line 816
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 733
    :catchall_13b
    move-exception v0

    :try_start_13c
    monitor-exit v6
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2345
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

    .line 2346
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2348
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2349
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2350
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    const-string v1, "mInstallerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2351
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2352
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2353
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string/jumbo v1, "stageDir"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2354
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    const-string/jumbo v1, "stageCid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2355
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2357
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2359
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2360
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2361
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2362
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2363
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2364
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mRelinquished"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2365
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2366
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2367
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2368
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2369
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    const-string v1, "mFinalMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2370
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2371
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2372
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2374
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2375
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1983
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1984
    const/4 v1, 0x1

    if-nez p2, :cond_d

    .line 1986
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 1989
    :cond_d
    const/4 p2, 0x0

    .line 1991
    :try_start_e
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p2

    .line 1992
    invoke-static {p2, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_36
    .catchall {:try_start_e .. :try_end_16} :catchall_34

    .line 1994
    if-ne p0, v1, :cond_1d

    .line 2002
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2003
    nop

    .line 2004
    return-void

    .line 1995
    :cond_1d
    :try_start_1d
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to extract native libraries, res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_34} :catch_36
    .catchall {:try_start_1d .. :try_end_34} :catchall_34

    .line 2002
    :catchall_34
    move-exception p0

    goto :goto_41

    .line 1998
    :catch_36
    move-exception p0

    .line 1999
    :try_start_37
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x6e

    const-string v1, "Failed to extract native libraries"

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_34

    .line 2002
    :goto_41
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7

    .line 495
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 496
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 498
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 499
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 500
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_1f

    .line 501
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 502
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 503
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 504
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 505
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

    .line 507
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 508
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 509
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 510
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 511
    if-eqz p1, :cond_5b

    .line 512
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 514
    :cond_5b
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 516
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 517
    if-nez p2, :cond_6f

    .line 518
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 520
    :cond_6f
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 521
    if-nez p2, :cond_7d

    .line 522
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 524
    :cond_7d
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 525
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 526
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 527
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 528
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 529
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 530
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 531
    iget-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez p1, :cond_af

    .line 532
    sget-object p1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 534
    :cond_af
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied:Z

    .line 535
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady:Z

    .line 536
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed:Z

    .line 537
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setStagedSessionErrorCode(ILjava/lang/String;)V

    .line 538
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 539
    monitor-exit v1

    .line 540
    return-object v0

    .line 539
    :catchall_c8
    move-exception p1

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_8 .. :try_end_ca} :catchall_c8

    throw p1
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

    .line 1057
    nop

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    .line 1060
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1061
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_24

    aget v4, v0, v3

    .line 1062
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1058
    :cond_23
    const/4 v1, 0x0

    .line 1065
    :cond_24
    return-object v1
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1912
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1913
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1915
    const-string v0, "/."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1919
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1920
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1923
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " outside base: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1916
    :cond_3e
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid path (was relative) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleCommit()V
    .registers 6

    .line 1270
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1271
    const/16 v0, 0x70

    .line 1272
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1273
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1276
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1278
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1279
    const/4 v0, 0x1

    const-string v2, "Session staged"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1280
    return-void

    .line 1283
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3f

    .line 1284
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1285
    const/16 v0, -0x6e

    const-string v2, "APEX packages can only be installed using staged sessions."

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1287
    return-void

    .line 1294
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 1297
    :try_start_43
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_46
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_43 .. :try_end_46} :catch_4e

    .line 1298
    :try_start_46
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->commitNonStagedLocked(Ljava/util/List;)V

    .line 1299
    monitor-exit v2

    .line 1305
    goto :goto_7b

    .line 1299
    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1300
    :catch_4e
    move-exception v0

    .line 1301
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit of session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageInstallerSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1304
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1306
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

    .line 365
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 366
    return v2

    .line 368
    :cond_c
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 369
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 370
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 8
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

    .line 1873
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p2

    .line 1874
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1875
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1876
    iget-wide v1, v1, Landroid/system/StructStat;->st_dev:J

    iget-wide v3, p2, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2e

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2a

    .line 1877
    return v0

    .line 1879
    :cond_2a
    goto :goto_d

    .line 1883
    :cond_2b
    nop

    .line 1884
    const/4 p1, 0x1

    return p1

    .line 1880
    :catch_2e
    move-exception p1

    .line 1881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to detect if linking possible: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageInstallerSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return v0
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .registers 3

    .line 2499
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
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method static synthetic lambda$readFromXml$1(I)[Ljava/lang/String;
    .registers 1

    .line 2606
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$readFromXml$2(Ljava/lang/Integer;)I
    .registers 1

    .line 2615
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 9
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

    .line 1939
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1940
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1942
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1943
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1942
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_23} :catch_25

    .line 1947
    nop

    .line 1948
    goto :goto_4

    .line 1944
    :catch_25
    move-exception p1

    .line 1945
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed linkOrCreateDir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1950
    :cond_50
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Linked "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " files into "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageInstallerSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return-void
.end method

.method private makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    .registers 14
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

    .line 1356
    const-string v0, "PackageInstallerSession"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_176

    .line 1360
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_16e

    .line 1363
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_166

    .line 1368
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 1369
    move-object v7, v2

    goto/16 :goto_13d

    .line 1371
    :cond_1e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_137

    .line 1372
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->needToAskForPermissionsLocked()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v3, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1384
    :try_start_50
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56

    .line 1386
    goto :goto_57

    .line 1385
    :catch_56
    move-exception v0

    .line 1390
    :goto_57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1391
    return-object v2

    .line 1396
    :cond_5c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_123

    .line 1398
    :try_start_63
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1399
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v2

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inherited files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_8c

    goto :goto_94

    .line 1403
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mInheritedFilesBase == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_94
    :goto_94
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1407
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_af

    .line 1408
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1409
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 1412
    :cond_af
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10f

    .line 1413
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1415
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1416
    if-ltz v6, :cond_fa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-lt v6, v7, :cond_d9

    goto :goto_fa

    .line 1422
    :cond_d9
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1423
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_eb

    .line 1425
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1427
    :cond_eb
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1428
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1430
    goto :goto_bd

    .line 1417
    :cond_fa
    :goto_fa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    goto :goto_bd

    .line 1432
    :cond_10f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_118

    .line 1436
    :cond_115
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_118} :catch_119

    .line 1441
    :goto_118
    goto :goto_123

    .line 1438
    :catch_119
    move-exception v0

    .line 1439
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1445
    :cond_123
    :goto_123
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1446
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 1450
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v2

    .line 1449
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1455
    :cond_137
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    move-object v7, v2

    .line 1471
    :goto_13d
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_149

    .line 1472
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v11, v0

    goto :goto_151

    .line 1474
    :cond_149
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v11, v0

    .line 1477
    :goto_151
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 1478
    new-instance v0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V

    return-object v0

    .line 1364
    :cond_166
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1361
    :cond_16e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1357
    :cond_176
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session relinquished"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private mayInheritNativeLibs()Z
    .registers 4

    .line 1498
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1484
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1485
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 1486
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1490
    :cond_2e
    :goto_2e
    return-void
.end method

.method private needToAskForPermissionsLocked()Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 383
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 384
    return v1

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 388
    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 390
    :goto_16
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 391
    const-string v5, "android.permission.INSTALL_SELF_UPDATES"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    .line 393
    :goto_25
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 394
    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    .line 396
    :goto_34
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 397
    if-nez v0, :cond_4e

    if-eqz v4, :cond_45

    const/4 v0, -0x1

    if-ne v5, v0, :cond_4e

    :cond_45
    if-eqz v3, :cond_4c

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v0, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v0, v2

    .line 400
    :goto_4f
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v3, :cond_55

    move v3, v2

    goto :goto_56

    :cond_55
    move v3, v1

    .line 401
    :goto_56
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_5e

    move v4, v2

    goto :goto_5f

    :cond_5e
    move v4, v1

    .line 402
    :goto_5f
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_69

    move v5, v2

    goto :goto_6a

    :cond_69
    move v5, v1

    .line 407
    :goto_6a
    if-nez v5, :cond_7a

    if-nez v0, :cond_79

    if-nez v3, :cond_79

    if-nez v4, :cond_79

    .line 408
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_7a

    :cond_79
    goto :goto_7b

    :cond_7a
    :goto_7a
    move v1, v2

    .line 407
    :goto_7b
    return v1
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 838
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 840
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 836
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_37

    .line 841
    :catch_37
    move-exception p1

    .line 842
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static readChildSessionIdFromXml(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    .line 2631
    const-string/jumbo v0, "sessionId"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2524
    move-object/from16 v0, p0

    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 2525
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 2526
    const-string v2, "installerPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2527
    const/16 v2, 0x2000

    move-object/from16 v5, p3

    invoke-virtual {v5, v11, v2, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    const-string v3, "installerUid"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 2529
    const-string v2, "createdMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 2530
    const-string/jumbo v2, "updatedMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 2531
    const-string/jumbo v2, "sessionStageDir"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2532
    if-eqz v2, :cond_41

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto :goto_44

    :cond_41
    const/4 v2, 0x0

    move-object/from16 v16, v2

    .line 2533
    :goto_44
    const-string/jumbo v2, "sessionStageCid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2534
    const/4 v2, 0x1

    const-string/jumbo v3, "prepared"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 2535
    const-string v3, "committed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    .line 2536
    const-string/jumbo v3, "sealed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v20

    .line 2537
    const/4 v3, -0x1

    const-string/jumbo v4, "parentSessionId"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 2540
    new-instance v13, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v13, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2542
    const/4 v4, 0x0

    const-string/jumbo v6, "multiPackage"

    invoke-static {v0, v6, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2543
    const-string/jumbo v6, "stagedSession"

    invoke-static {v0, v6, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2544
    const-string v6, "mode"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2545
    const-string v6, "installFlags"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2546
    const-string v6, "installLocation"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2547
    const-string/jumbo v6, "sizeBytes"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2548
    const-string v6, "appPackageName"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2549
    const-string v6, "appIcon"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2550
    const-string v6, "appLabel"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2551
    const-string/jumbo v6, "originatingUri"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2552
    nop

    .line 2553
    const-string/jumbo v6, "originatingUid"

    invoke-static {v0, v6, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2554
    const-string/jumbo v6, "referrerUri"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2555
    const-string v6, "abiOverride"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2556
    const-string/jumbo v6, "volumeUuid"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2557
    const-string v6, "installRason"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    iput v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2559
    move-object/from16 v6, p6

    invoke-static {v9, v6}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 2560
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 2561
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2562
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2564
    :cond_10a
    const-string v6, "isReady"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 2565
    const-string v6, "isFailed"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 2566
    const-string v6, "isApplied"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    .line 2567
    const-string v3, "errorCode"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    .line 2569
    const-string v3, "errorMessage"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2572
    invoke-static {v8, v6, v7}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v3

    if-eqz v3, :cond_20e

    .line 2582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2583
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2585
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2587
    :goto_141
    move/from16 p6, v6

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v24, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1bd

    const/4 v7, 0x3

    if-ne v6, v7, :cond_155

    .line 2588
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_1bd

    .line 2589
    :cond_155
    const/4 v7, 0x3

    if-eq v6, v7, :cond_1b3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_160

    .line 2590
    move/from16 v6, p6

    move/from16 v7, v24

    goto :goto_141

    .line 2592
    :cond_160
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "granted-runtime-permission"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "name"

    if-eqz v6, :cond_176

    .line 2593
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2595
    :cond_176
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v25, v5

    const-string/jumbo v5, "whitelisted-restricted-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 2596
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    :cond_18c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "childSession"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ab

    .line 2600
    const/4 v5, -0x1

    invoke-static {v0, v1, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v6, p6

    move/from16 v7, v24

    move/from16 v5, v25

    goto :goto_141

    .line 2599
    :cond_1ab
    const/4 v5, -0x1

    move/from16 v6, p6

    move/from16 v7, v24

    move/from16 v5, v25

    goto :goto_141

    .line 2589
    :cond_1b3
    move/from16 v25, v5

    const/4 v5, -0x1

    move/from16 v6, p6

    move/from16 v7, v24

    move/from16 v5, v25

    goto :goto_141

    .line 2604
    :cond_1bd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d2

    .line 2605
    nop

    .line 2606
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2609
    :cond_1d2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1da

    .line 2610
    iput-object v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2614
    :cond_1da
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f1

    .line 2615
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_1f5

    .line 2617
    :cond_1f1
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    move-object/from16 v21, v0

    .line 2620
    :goto_1f5
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v1, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p4

    move/from16 v23, v8

    move-object/from16 v8, p5

    move/from16 v25, v1

    invoke-direct/range {v2 .. v27}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V

    return-object v0

    .line 2573
    :cond_20e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t restore staged session with invalid state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1805
    new-instance v0, Ljava/io/File;

    .line 1806
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, -0x76

    if-eqz v1, :cond_4b

    .line 1812
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez p1, :cond_35

    .line 1813
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1814
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_2d

    goto :goto_35

    .line 1815
    :cond_2d
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "Some file is missing fs-verity signature"

    invoke-direct {p1, v2, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1827
    :cond_35
    :goto_35
    new-instance p1, Ljava/io/File;

    .line 1828
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1829
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1830
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    return-void

    .line 1820
    :cond_4b
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez p2, :cond_50

    .line 1821
    return-void

    .line 1823
    :cond_50
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing corresponding fs-verity signature to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private resolveInheritedFile(Ljava/io/File;)V
    .registers 3

    .line 1834
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance v0, Ljava/io/File;

    .line 1838
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1840
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1842
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

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v0, :cond_13

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 604
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    goto :goto_13

    .line 606
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing stageDir"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object v0
.end method

.method private sealAndValidateLocked(Ljava/util/List;)V
    .registers 6
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

    .line 1128
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1129
    const-string/jumbo v0, "sealing of session"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1133
    if-eqz p1, :cond_11

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertMultiPackageConsistencyLocked(Ljava/util/List;)V

    .line 1137
    :cond_11
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz p1, :cond_4a

    .line 1138
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {p1}, Lcom/android/server/pm/StagingManager;->getActiveSession()Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p1

    .line 1139
    if-eqz p1, :cond_2a

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eq v1, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1142
    :goto_2b
    if-nez v0, :cond_2e

    goto :goto_4a

    .line 1143
    :cond_2e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is already in-progress committed staged session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1153
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez p1, :cond_7c

    .line 1154
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const v1, 0x4000040

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1158
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 1161
    :try_start_62
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6f

    .line 1162
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_72

    .line 1164
    :cond_6f
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    :try_end_72
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_62 .. :try_end_72} :catch_7a
    .catchall {:try_start_62 .. :try_end_72} :catchall_73

    .line 1172
    :goto_72
    goto :goto_7c

    .line 1168
    :catchall_73
    move-exception p1

    .line 1171
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1166
    :catch_7a
    move-exception p1

    .line 1167
    throw p1

    .line 1174
    :cond_7c
    :goto_7c
    return-void
.end method

.method private shouldScrubData(I)Z
    .registers 3

    .line 468
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
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

    .line 1511
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1512
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_24

    .line 1516
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1c

    .line 1521
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1522
    return-void

    .line 1517
    :cond_1c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Too many files for apex install"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1513
    :cond_24
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No packages staged"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    .registers 20
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

    .line 1539
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1540
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1541
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1542
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1544
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1545
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1546
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1549
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v4, 0x2

    const/4 v5, -0x2

    if-ne v3, v4, :cond_32

    if-eqz v0, :cond_2a

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2a

    goto :goto_32

    .line 1551
    :cond_2a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Missing existing base package"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1555
    :cond_32
    :goto_32
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_4e

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v3, v4, :cond_4e

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1557
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v7

    goto :goto_4f

    :cond_4e
    move v3, v6

    :goto_4f
    iput-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1560
    :try_start_51
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_3ec

    .line 1564
    nop

    .line 1566
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v8, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-virtual {v3, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1567
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_88

    .line 1569
    array-length v9, v3

    move v10, v6

    :goto_6a
    if-ge v10, v9, :cond_88

    aget-object v11, v3, v10

    .line 1570
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1571
    nop

    .line 1572
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, ".removed"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1571
    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1573
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    add-int/lit8 v10, v10, 0x1

    goto :goto_6a

    .line 1577
    :cond_88
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v3, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1578
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_9d

    goto :goto_a5

    .line 1579
    :cond_9d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No packages staged"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1583
    :cond_a5
    :goto_a5
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1584
    array-length v10, v3

    move-object v12, v2

    move v11, v6

    :goto_ad
    const-string v13, ".apk"

    const/16 v14, 0x20

    if-ge v11, v10, :cond_193

    aget-object v15, v3, v11

    .line 1587
    :try_start_b5
    invoke-static {v15, v14}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v14
    :try_end_b9
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_b5 .. :try_end_b9} :catch_18c

    .line 1591
    nop

    .line 1593
    iget-object v4, v14, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 1599
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_d3

    .line 1600
    iget-object v4, v14, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1601
    move-object/from16 v17, v3

    invoke-virtual {v14}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_d5

    .line 1599
    :cond_d3
    move-object/from16 v17, v3

    .line 1603
    :goto_d5
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v2, v3, :cond_df

    .line 1604
    iget-object v2, v14, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1607
    :cond_df
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1611
    iget-object v2, v14, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v2, :cond_ed

    .line 1612
    const-string v2, "base.apk"

    goto :goto_104

    .line 1614
    :cond_ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "split_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1616
    :goto_104
    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    const-string v13, "Invalid filename: "

    if-eqz v3, :cond_159

    .line 1621
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1622
    invoke-direct {v1, v15, v3}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    .line 1625
    iget-object v4, v14, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v4, :cond_11d

    .line 1626
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1627
    move-object v12, v14

    .line 1630
    :cond_11d
    invoke-static {v15}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 1631
    if-eqz v3, :cond_151

    .line 1632
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 1636
    new-instance v4, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 1637
    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1638
    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_151

    .line 1633
    :cond_13c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1584
    :cond_151
    :goto_151
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x0

    const/4 v4, 0x2

    goto/16 :goto_ad

    .line 1617
    :cond_159
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1594
    :cond_16e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was defined multiple times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1589
    :catch_18c
    move-exception v0

    move-object v1, v0

    .line 1590
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 1642
    :cond_193
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_20c

    .line 1643
    if-eqz v0, :cond_1f3

    .line 1649
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1650
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b4

    .line 1654
    goto :goto_19f

    .line 1651
    :cond_1b4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1657
    :cond_1cb
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1d9

    .line 1658
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1659
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1661
    :cond_1d9
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v2, v3, :cond_20c

    .line 1663
    :try_start_1df
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_1e9
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1df .. :try_end_1e9} :catch_1ea

    .line 1669
    goto :goto_20c

    .line 1666
    :catch_1ea
    move-exception v0

    .line 1667
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Couldn\'t obtain signatures from base APK"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1644
    :cond_1f3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing existing base package for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1673
    :cond_20c
    :goto_20c
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v2, v7, :cond_223

    .line 1675
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    goto/16 :goto_379

    .line 1676
    :cond_21b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Full install must include a base package"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1683
    :cond_223
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1685
    :try_start_225
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    .line 1686
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v14}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v3
    :try_end_23f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_225 .. :try_end_23f} :catch_3e6

    .line 1690
    nop

    .line 1692
    const-string v4, "Existing base"

    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1695
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v4, :cond_265

    .line 1696
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1697
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-direct {v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1699
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1700
    invoke-static {v4}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1701
    if-eqz v4, :cond_264

    .line 1702
    invoke-direct {v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1704
    :cond_264
    move-object v12, v3

    .line 1708
    :cond_265
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29c

    .line 1709
    move v3, v6

    :goto_26e
    iget-object v4, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_29c

    .line 1710
    iget-object v4, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 1711
    new-instance v10, Ljava/io/File;

    iget-object v11, v2, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1712
    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1713
    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_299

    if-nez v11, :cond_299

    .line 1714
    invoke-direct {v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1716
    nop

    .line 1717
    invoke-static {v10}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1718
    if-eqz v4, :cond_299

    .line 1719
    invoke-direct {v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1709
    :cond_299
    add-int/lit8 v3, v3, 0x1

    goto :goto_26e

    .line 1726
    :cond_29c
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1727
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 1728
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "oat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f6

    .line 1730
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1735
    if-eqz v0, :cond_2f6

    array-length v3, v0

    if-lez v3, :cond_2f6

    .line 1736
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v3

    .line 1737
    array-length v4, v0

    move v10, v6

    :goto_2c8
    if-ge v10, v4, :cond_2f6

    aget-object v11, v0, v10

    .line 1739
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d7

    .line 1740
    goto :goto_2f3

    .line 1743
    :cond_2d7
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1744
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 1745
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2f3

    .line 1746
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1737
    :cond_2f3
    :goto_2f3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c8

    .line 1753
    :cond_2f6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_379

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_379

    .line 1754
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v0, v3, v6

    new-instance v0, Ljava/io/File;

    const-string v4, "lib64"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v0, v3, v7

    .line 1757
    array-length v4, v3

    move v8, v6

    :goto_319
    if-ge v8, v4, :cond_379

    aget-object v0, v3, v8

    .line 1758
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_374

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_32a

    .line 1759
    goto :goto_374

    .line 1761
    :cond_32a
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1762
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v11, v0

    move v14, v6

    :goto_335
    if-ge v14, v11, :cond_36f

    aget-object v15, v0, v14

    .line 1763
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_340

    .line 1764
    goto :goto_35d

    .line 1768
    :cond_340
    :try_start_340
    invoke-static {v15, v2}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6
    :try_end_344
    .catch Ljava/io/IOException; {:try_start_340 .. :try_end_344} :catch_362

    .line 1774
    nop

    .line 1775
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_352

    .line 1776
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1778
    :cond_352
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1762
    :goto_35d
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_335

    .line 1769
    :catch_362
    move-exception v0

    move-object v6, v0

    .line 1770
    const-string v0, "PackageInstallerSession"

    const-string v7, "Skipping linking of native library directory!"

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 1773
    nop

    .line 1780
    :cond_36f
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1757
    :cond_374
    :goto_374
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_319

    .line 1784
    :cond_379
    :goto_379
    iget-boolean v0, v12, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    if-eqz v0, :cond_3be

    .line 1785
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_383
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1786
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3bd

    .line 1787
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a4

    goto :goto_3bd

    .line 1788
    :cond_3a4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1792
    :cond_3bd
    :goto_3bd
    goto :goto_383

    .line 1794
    :cond_3be
    iget-boolean v0, v12, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    if-eqz v0, :cond_3e5

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3ca

    goto :goto_3e5

    .line 1795
    :cond_3ca
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing split for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1798
    :cond_3e5
    :goto_3e5
    return-void

    .line 1688
    :catch_3e6
    move-exception v0

    .line 1689
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    .line 1561
    :catch_3ec
    move-exception v0

    move-object v1, v0

    .line 1562
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x12

    const-string v3, "Failed to resolve stage location"

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2379
    if-eqz p1, :cond_1a

    .line 2380
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 2381
    const-string v3, "granted-runtime-permission"

    const/4 v4, 0x0

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2382
    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2383
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2380
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2386
    :cond_1a
    return-void
.end method

.method private static writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
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

    .line 2390
    if-eqz p1, :cond_22

    .line 2391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2392
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 2393
    const-string/jumbo v2, "whitelisted-restricted-permission"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2395
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2398
    :cond_22
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .line 2079
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2084
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2092
    monitor-exit v0

    return-void

    .line 2094
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_31

    .line 2095
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_4b

    .line 2096
    const/4 v2, 0x1

    :try_start_22
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2097
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2e

    .line 2098
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2100
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_4b

    goto :goto_31

    .line 2097
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v2

    .line 2103
    :cond_31
    :goto_31
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v1, :cond_3e

    .line 2104
    const-string v1, "PackageInstallerSession"

    const-string v2, "Ignoring abandon after commit relinquished control"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    monitor-exit v0

    return-void

    .line 2107
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2108
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_4b

    .line 2110
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "Session was abandoned"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2111
    return-void

    .line 2108
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    .line 2080
    :cond_4e
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
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2135
    if-eqz v0, :cond_3e

    .line 2136
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

    .line 2142
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2143
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2144
    const-string v2, "addChildSessionId"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2146
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2147
    if-ltz v2, :cond_31

    .line 2148
    monitor-exit v1

    return-void

    .line 2150
    :cond_31
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2151
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionIdInternal(I)V

    .line 2152
    monitor-exit v1

    .line 2153
    return-void

    .line 2152
    :catchall_3b
    move-exception p1

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3b

    throw p1

    .line 2139
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add child session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as it does not exist or is in an invalid state."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addChildSessionIdInternal(I)V
    .registers 4

    .line 2028
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2029
    return-void
.end method

.method public addClientProgress(F)V
    .registers 4

    .line 626
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 629
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public close()V
    .registers 2

    .line 2059
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 2060
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 9

    .line 878
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_58

    .line 883
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 884
    return-void

    .line 886
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    .line 887
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 888
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V

    .line 890
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    .line 891
    nop

    .line 892
    const/4 v0, 0x0

    .line 893
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2d
    if-ltz v2, :cond_48

    .line 894
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 898
    :try_start_35
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    .line 899
    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v4
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_3f} :catch_43

    if-nez v4, :cond_42

    .line 900
    move v0, v1

    .line 904
    :cond_42
    goto :goto_45

    .line 902
    :catch_43
    move-exception v3

    .line 903
    nop

    .line 893
    :goto_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 906
    :cond_48
    if-nez v3, :cond_4d

    .line 909
    if-eqz v0, :cond_4e

    .line 910
    return-void

    .line 907
    :cond_4d
    throw v3

    .line 913
    :cond_4e
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 914
    return-void

    .line 879
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is a child of multi-package session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and may not be committed directly."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 2338
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2339
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2340
    monitor-exit v0

    .line 2341
    return-void

    .line 2340
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    .line 481
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    return-object p1
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChildSessionIds()[I
    .registers 2

    .line 2125
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    .line 2126
    if-eqz v0, :cond_9

    .line 2127
    return-object v0

    .line 2129
    :cond_9
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .registers 3

    .line 1906
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1907
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1908
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getInstallerUid()I
    .registers 3

    .line 1891
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    .line 1893
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 649
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 652
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

    .line 653
    :catch_15
    move-exception v1

    .line 654
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 656
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getParentSessionId()I
    .registers 2

    .line 2192
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    return v0
.end method

.method getStagedSessionErrorCode()I
    .registers 2

    .line 2291
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    return v0
.end method

.method getStagedSessionErrorMessage()Ljava/lang/String;
    .registers 2

    .line 2296
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedMillis()J
    .registers 4

    .line 1900
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1901
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    .line 1902
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method hasParentSessionId()Z
    .registers 3

    .line 2187
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

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    monitor-exit v0

    return v1

    .line 559
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isMultiPackage()Z
    .registers 2

    .line 2115
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 546
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSealed()Z
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 552
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isStaged()Z
    .registers 2

    .line 2120
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
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

    .line 566
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method isStagedSessionApplied()Z
    .registers 2

    .line 2281
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    return v0
.end method

.method isStagedSessionFailed()Z
    .registers 2

    .line 2286
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    return v0
.end method

.method isStagedSessionReady()Z
    .registers 2

    .line 2276
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    return v0
.end method

.method public synthetic lambda$doWriteInternal$0$PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .registers 8

    .line 784
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 785
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 786
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 787
    long-to-float p1, v0

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->addClientProgress(F)V

    .line 789
    :cond_1a
    return-void
.end method

.method public markAsCommitted(Landroid/content/IntentSender;Z)Z
    .registers 12

    .line 986
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 991
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 993
    const-string v2, "commit"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 995
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 997
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v7

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v3, v2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 998
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 1000
    const/4 p1, 0x0

    if-eqz p2, :cond_42

    .line 1001
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq p2, v2, :cond_3a

    goto :goto_48

    .line 1004
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session has not been transferred"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1007
    :cond_42
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne p2, v2, :cond_87

    .line 1014
    :goto_48
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_4f

    .line 1015
    monitor-exit v1

    return v2

    .line 1018
    :cond_4f
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1019
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_8f

    if-nez v3, :cond_70

    .line 1021
    :try_start_55
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_69
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_8f

    .line 1029
    goto :goto_70

    .line 1024
    :catch_59
    move-exception p2

    .line 1026
    :try_start_5a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1027
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1028
    const/4 p1, 0x0

    monitor-exit v1

    return p1

    .line 1022
    :catch_69
    move-exception p1

    .line 1023
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1033
    :cond_70
    :goto_70
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1034
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1038
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1040
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 1041
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_8f

    .line 1043
    if-nez p2, :cond_86

    .line 1047
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1049
    :cond_86
    return v2

    .line 1008
    :cond_87
    :try_start_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session has been transferred"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1041
    :catchall_8f
    move-exception p1

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method public markUpdated()V
    .registers 4

    .line 1210
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 1212
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
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

    .line 2032
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 2033
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2037
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 2039
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v3, :cond_33

    .line 2040
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_21

    .line 2041
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_27

    .line 2042
    :cond_21
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_2a

    .line 2048
    :goto_27
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_33

    .line 2045
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "stageDir must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2050
    :cond_33
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_3c

    .line 2052
    if-nez v2, :cond_3b

    .line 2053
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2055
    :cond_3b
    return-void

    .line 2050
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 822
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 824
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 826
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_18

    :try_start_10
    monitor-exit v0

    return-object p1

    .line 827
    :catch_12
    move-exception p1

    .line 828
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 830
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 13

    .line 694
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    :try_start_5
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    .line 695
    :catch_a
    move-exception p1

    .line 696
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public removeChildSessionId(I)V
    .registers 5

    .line 2157
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2158
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2159
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    .line 2160
    if-eqz v0, :cond_15

    .line 2161
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2163
    :cond_15
    if-gez p1, :cond_19

    .line 2165
    monitor-exit v1

    return-void

    .line 2167
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2168
    monitor-exit v1

    .line 2169
    return-void

    .line 2168
    :catchall_20
    move-exception p1

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 665
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 667
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_22

    .line 670
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_22

    .line 673
    nop

    .line 674
    :try_start_1a
    monitor-exit v0

    .line 675
    return-void

    .line 671
    :catch_1c
    move-exception p1

    .line 672
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 674
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw p1

    .line 662
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must specify package name to remove a split"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method sealAndValidateIfNecessary()V
    .registers 5

    .line 1186
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3c

    .line 1190
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    .line 1191
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1194
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_33
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 1204
    goto :goto_31

    .line 1205
    :catchall_1a
    move-exception v0

    goto :goto_3a

    .line 1197
    :catch_1c
    move-exception v0

    .line 1198
    :try_start_1d
    const-string v2, "PackageInstallerSession"

    const-string v3, "Package not valid"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1202
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1203
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1202
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1205
    :goto_31
    monitor-exit v1

    .line 1206
    return-void

    .line 1195
    :catch_33
    move-exception v0

    .line 1196
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1205
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_1a

    throw v0

    .line 1188
    :cond_3c
    :goto_3c
    :try_start_3c
    monitor-exit v0

    return-void

    .line 1190
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public setClientProgress(F)V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 618
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 619
    :goto_10
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 620
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 621
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method setParentSessionId(I)V
    .registers 5

    .line 2176
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2177
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2e

    :try_start_6
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_b

    goto :goto_2e

    .line 2179
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parent of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is alreadyset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2182
    :cond_2e
    :goto_2e
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 2183
    monitor-exit v0

    .line 2184
    return-void

    .line 2183
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p1
.end method

.method setPermissionsResult(Z)V
    .registers 4

    .line 2007
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_26

    .line 2011
    if-eqz p1, :cond_1a

    .line 2013
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2014
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 2015
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2016
    monitor-exit p1

    goto :goto_25

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v0

    .line 2018
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2019
    const/16 p1, -0x73

    const/4 v0, 0x0

    const-string v1, "User rejected permissions"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2021
    :goto_25
    return-void

    .line 2008
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must be sealed to accept permissions"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setStagedSessionApplied()V
    .registers 5

    .line 2262
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2263
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2264
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2265
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2266
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2267
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2268
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

    .line 2269
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2270
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2271
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2272
    return-void

    .line 2269
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method setStagedSessionFailed(ILjava/lang/String;)V
    .registers 6

    .line 2248
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2249
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2250
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2252
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2253
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2254
    const-string p1, "PackageInstallerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 2256
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2257
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2258
    return-void

    .line 2255
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method setStagedSessionReady()V
    .registers 3

    .line 2235
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2236
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2238
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2239
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2240
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2241
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_18

    .line 2242
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2243
    return-void

    .line 2241
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 6

    .line 1217
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_a3

    .line 1224
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7d

    .line 1232
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1236
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 1238
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1239
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1240
    const-string/jumbo v3, "transfer"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_72

    .line 1243
    :try_start_32
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_6b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_32 .. :try_end_35} :catch_55
    .catchall {:try_start_32 .. :try_end_35} :catchall_72

    .line 1252
    nop

    .line 1254
    :try_start_36
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1259
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1260
    iget p1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1261
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_72

    .line 1266
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1267
    return-void

    .line 1255
    :cond_4d
    :try_start_4d
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Can only transfer sessions that update the original installer"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1246
    :catch_55
    move-exception p1

    .line 1248
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1249
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package is not valid"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1244
    :catch_6b
    move-exception p1

    .line 1245
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1261
    :catchall_72
    move-exception p1

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_72

    throw p1

    .line 1233
    :cond_75
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Can only transfer sessions that use public options"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1226
    :cond_7d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have the "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_a3
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 7

    .line 704
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 707
    nop

    .line 708
    return-void

    .line 705
    :catch_5
    move-exception p1

    .line 706
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2412
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2413
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 2414
    monitor-exit v0

    return-void

    .line 2417
    :cond_9
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2419
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2420
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2421
    const-string v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2423
    const-string v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2424
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2425
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2426
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_4d

    .line 2427
    const-string/jumbo v1, "sessionStageDir"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2428
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2427
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2430
    :cond_4d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 2431
    const-string/jumbo v1, "sessionStageCid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2433
    :cond_59
    const-string/jumbo v1, "prepared"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2434
    const-string v1, "committed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2435
    const-string/jumbo v1, "sealed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2437
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2438
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2439
    const-string v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2440
    const-string v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2441
    const-string v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2442
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2443
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2447
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2448
    const-string v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2449
    const-string v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2450
    const-string v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2451
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2452
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2453
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2454
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2455
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2456
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2457
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2458
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2459
    const-string v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2461
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 2462
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2466
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 2467
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_14b

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 2468
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1c0

    .line 2469
    :cond_14b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1c0

    .line 2470
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c0

    .line 2471
    const-string v1, "PackageInstallerSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing changed icon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catchall {:try_start_3 .. :try_end_173} :catchall_1e5

    .line 2472
    nop

    .line 2474
    :try_start_174
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_179} :catch_18d
    .catchall {:try_start_174 .. :try_end_179} :catchall_18a

    .line 2475
    :try_start_179
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_184} :catch_188
    .catchall {:try_start_179 .. :try_end_184} :catchall_1bb

    .line 2479
    :goto_184
    :try_start_184
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_1e5

    .line 2480
    goto :goto_1b2

    .line 2476
    :catch_188
    move-exception v3

    goto :goto_18f

    .line 2479
    :catchall_18a
    move-exception p1

    move-object v1, v2

    goto :goto_1bc

    .line 2476
    :catch_18d
    move-exception v3

    move-object v1, v2

    .line 2477
    :goto_18f
    :try_start_18f
    const-string v4, "PackageInstallerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catchall {:try_start_18f .. :try_end_1b1} :catchall_1bb

    goto :goto_184

    .line 2482
    :goto_1b2
    :try_start_1b2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_1c0

    .line 2479
    :catchall_1bb
    move-exception p1

    :goto_1bc
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 2484
    :cond_1c0
    :goto_1c0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object p2

    .line 2485
    array-length v1, p2

    const/4 v3, 0x0

    :goto_1c6
    if-ge v3, v1, :cond_1dd

    aget v4, p2, v3

    .line 2486
    const-string v5, "childSession"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2487
    const-string/jumbo v5, "sessionId"

    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2488
    const-string v4, "childSession"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2485
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c6

    .line 2490
    :cond_1dd
    monitor-exit v0
    :try_end_1de
    .catchall {:try_start_1b2 .. :try_end_1de} :catchall_1e5

    .line 2492
    const-string/jumbo p2, "session"

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    return-void

    .line 2490
    :catchall_1e5
    move-exception p1

    :try_start_1e6
    monitor-exit v0
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    throw p1
.end method
