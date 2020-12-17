.class final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# static fields
.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field private static final TAG:Ljava/lang/String; = "AutofillSession"

.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field private mActivityToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAssistReceiver:Landroid/app/IAssistDataReceiver;

.field private mAugmentedAutofillDestroyer:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAugmentedAutofillableIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mAugmentedRequestsLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientState:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientVulture:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mContexts:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentViewId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFlags:I

.field private mForAugmentedAutofillOnly:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasCallback:Z

.field private mIsSaving:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field private final mRequestLogs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mResponses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveOnAllViewsInvisible:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSelectedDatasetIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field private final mStartTime:J

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUiShownTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mViewStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWtfHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final taskId:I

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZI)V
    .registers 37
    .param p1, "service"  # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "ui"  # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p3, "context"  # Landroid/content/Context;
    .param p4, "handler"  # Landroid/os/Handler;
    .param p5, "userId"  # I
    .param p6, "lock"  # Ljava/lang/Object;
    .param p7, "sessionId"  # I
    .param p8, "taskId"  # I
    .param p9, "uid"  # I
    .param p10, "activityToken"  # Landroid/os/IBinder;
    .param p11, "client"  # Landroid/os/IBinder;
    .param p12, "hasCallback"  # Z
    .param p13, "uiLatencyHistory"  # Landroid/util/LocalLog;
    .param p14, "wtfHistory"  # Landroid/util/LocalLog;
    .param p15, "serviceComponentName"  # Landroid/content/ComponentName;
    .param p16, "componentName"  # Landroid/content/ComponentName;
    .param p17, "compatMode"  # Z
    .param p18, "bindInstantServiceAllowed"  # Z
    .param p19, "forAugmentedAutofillOnly"  # Z
    .param p20, "flags"  # I

    .line 640
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 297
    new-instance v0, Lcom/android/server/autofill/Session$1;

    invoke-direct {v0, v6}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    .line 641
    const/4 v0, 0x0

    if-gez v7, :cond_35

    .line 642
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Non-positive sessionId: %s"

    invoke-direct {v6, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    :cond_35
    iput v7, v6, Lcom/android/server/autofill/Session;->id:I

    .line 645
    move/from16 v8, p20

    iput v8, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 646
    move/from16 v9, p8

    iput v9, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 647
    move/from16 v10, p9

    iput v10, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 649
    move-object/from16 v11, p1

    iput-object v11, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 650
    move-object/from16 v12, p6

    iput-object v12, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 651
    move-object/from16 v13, p2

    iput-object v13, v6, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 652
    move-object/from16 v14, p4

    iput-object v14, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 653
    if-nez p15, :cond_5d

    move-object v15, v0

    goto :goto_6d

    .line 654
    :cond_5d
    new-instance v15, Lcom/android/server/autofill/RemoteFillService;

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p15

    move/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    :goto_6d
    iput-object v15, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 656
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 657
    move/from16 v1, p12

    iput-boolean v1, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 658
    move-object/from16 v2, p13

    iput-object v2, v6, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 659
    move-object/from16 v3, p14

    iput-object v3, v6, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 660
    move-object/from16 v4, p16

    iput-object v4, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 661
    move/from16 v5, p17

    iput-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 662
    move/from16 v15, p19

    iput-boolean v15, v6, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 663
    move-object/from16 v0, p11

    invoke-direct {v6, v0}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 665
    iget-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x38a

    invoke-direct {v6, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x5ac

    .line 666
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/Session;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/autofill/Session;
    .param p1, "x1"  # Landroid/service/autofill/FillContext;
    .param p2, "x2"  # I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/autofill/Session;
    .param p1, "x1"  # Z

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/autofill/Session;
    .param p1, "x1"  # Ljava/lang/Exception;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # [Ljava/lang/Object;

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/Session;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;
    .param p1, "x1"  # Landroid/app/assist/AssistStructure$ViewNode;

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/Session;
    .param p1, "x1"  # Ljava/util/ArrayList;

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .registers 3
    .param p0, "action"  # I

    .line 3452
    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    .line 3462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3460
    :cond_1e
    const-string v0, "VALUE_CHANGED"

    return-object v0

    .line 3458
    :cond_21
    const-string v0, "VIEW_EXITED"

    return-object v0

    .line 3456
    :cond_24
    const-string v0, "VIEW_ENTERED"

    return-object v0

    .line 3454
    :cond_27
    const-string v0, "START_SESSION"

    return-object v0
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 7
    .param p1, "requestId"  # I
    .param p2, "tag"  # I
    .param p3, "value"  # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3429
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 3430
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-nez v0, :cond_29

    .line 3431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no log for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    return-void

    .line 3435
    :cond_29
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3436
    return-void
.end method

.method private cancelAugmentedAutofillLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2815
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2816
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 2817
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_10

    .line 2818
    const-string v2, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    return-void

    .line 2821
    :cond_10
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAugmentedAutofillLocked() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 2823
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_17

    .line 546
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 547
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 546
    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    return-void

    .line 550
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;-><init>(Lcom/android/server/autofill/Session;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 570
    return-void
.end method

.method private createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 8
    .param p1, "requestId"  # I
    .param p2, "extras"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2993
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2995
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 2997
    .local v1, "context":Landroid/service/autofill/FillContext;
    if-nez v1, :cond_21

    .line 2998
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    .line 2998
    const/4 v3, 0x0

    const-string v4, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3000
    return-object v3

    .line 3002
    :cond_21
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    const-string v3, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3003
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3004
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 7
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .param p2, "state"  # I
    .param p3, "value"  # Landroid/view/autofill/AutofillValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2936
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2937
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_e

    .line 2938
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_42

    .line 2940
    :cond_e
    new-instance v1, Lcom/android/server/autofill/ViewState;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v1

    .line 2941
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_36

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding autofillable view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2945
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    :goto_42
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_49

    .line 2948
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 2950
    :cond_49
    return-object v0
.end method

.method private createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .registers 13
    .param p1, "saveInfo"  # Landroid/service/autofill/SaveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/SaveInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;"
        }
    .end annotation

    .line 1913
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1915
    :cond_4
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    .line 1916
    .local v1, "sanitizerKeys":[Landroid/service/autofill/InternalSanitizer;
    if-nez v1, :cond_b

    return-object v0

    .line 1918
    :cond_b
    array-length v0, v1

    .line 1919
    .local v0, "size":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1920
    .local v2, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v4, "AutofillSession"

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provided "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sanitizers"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_30
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1922
    .local v3, "sanitizerValues":[[Landroid/view/autofill/AutofillId;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_35
    if-ge v5, v0, :cond_77

    .line 1923
    aget-object v6, v1, v5

    .line 1924
    .local v6, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    aget-object v7, v3, v5

    .line 1925
    .local v7, "ids":[Landroid/view/autofill/AutofillId;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_68

    .line 1926
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sanitizer #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") for ids "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1926
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_68
    array-length v8, v7

    const/4 v9, 0x0

    :goto_6a
    if-ge v9, v8, :cond_74

    aget-object v10, v7, v9

    .line 1930
    .local v10, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    .end local v10  # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 1922
    .end local v6  # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    .end local v7  # "ids":[Landroid/view/autofill/AutofillId;
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 1933
    .end local v5  # "i":I
    :cond_77
    return-object v2
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "intentSender"  # Landroid/content/IntentSender;

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_e

    .line 1127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1128
    monitor-exit v0

    .line 1131
    goto :goto_16

    .line 1128
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    .end local p0  # "this":Lcom/android/server/autofill/Session;
    .end local p1  # "intentSender":Landroid/content/IntentSender;
    :try_start_d
    throw v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_e} :catch_e

    .line 1129
    .restart local p0  # "this":Lcom/android/server/autofill/Session;
    .restart local p1  # "intentSender":Landroid/content/IntentSender;
    :catch_e
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method private static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 6
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "log"  # Landroid/metrics/LogMaker;
    .param p2, "field"  # Ljava/lang/String;
    .param p3, "tag"  # I

    .line 3168
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v0

    .line 3169
    .local v0, "value":I
    if-eqz v0, :cond_16

    .line 3170
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3172
    :cond_16
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 8
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "log"  # Landroid/metrics/LogMaker;

    .line 3125
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3126
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 3128
    .local v0, "type":I
    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_32

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_26

    .line 3132
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3130
    :cond_26
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3129
    :cond_2c
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3131
    :cond_32
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    :goto_37
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3135
    const-string v4, ", PKG="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3136
    const-string v4, ", SERVICE="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x38c

    .line 3137
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3136
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3138
    const-string v4, ", ORDINAL="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x5ae

    .line 3139
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3138
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3140
    const/16 v4, 0x5ac

    const-string v5, "FLAGS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3141
    const/16 v4, 0x38d

    const-string v5, "NUM_DATASETS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3142
    const/16 v4, 0x479

    const-string v5, "UI_LATENCY"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3143
    const/16 v4, 0x5ad

    .line 3144
    invoke-static {p1, v4}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v4

    .line 3145
    .local v4, "authStatus":I
    if-eqz v4, :cond_b9

    .line 3146
    const-string v5, ", AUTH_STATUS="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    const/16 v5, 0x390

    if-eq v4, v5, :cond_ab

    packed-switch v4, :pswitch_data_c8

    .line 3156
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3153
    :pswitch_99  #0x468
    const-string v2, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3155
    :pswitch_9f  #0x467
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3151
    :pswitch_a5  #0x466
    const-string v2, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3149
    :cond_ab
    const-string v2, "AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3158
    :goto_b0
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3160
    :cond_b9
    const/16 v1, 0x4f7

    const-string v2, "FC_IDS"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3162
    const/16 v1, 0x586

    const-string v2, "COMPAT_MODE"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3164
    return-void

    :pswitch_data_c8
    .packed-switch 0x466
        :pswitch_a5  #00000466
        :pswitch_9f  #00000467
        :pswitch_99  #00000468
    .end packed-switch
.end method

.method private fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 13
    .param p1, "fillContext"  # Landroid/service/autofill/FillContext;
    .param p2, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 503
    nop

    .line 504
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 506
    .local v0, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 507
    .local v1, "numViewState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_6e

    .line 508
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 510
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    aget-object v4, v0, v2

    .line 511
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v4, :cond_3b

    .line 512
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_6b

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 519
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 520
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 521
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    new-instance v7, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v7}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 524
    .local v7, "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    if-eqz v6, :cond_52

    invoke-virtual {v6, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 525
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 528
    :cond_52
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v8, :cond_68

    .line 530
    iget-object v9, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 532
    iget-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v8, :cond_68

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_68

    .line 533
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 536
    :cond_68
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 507
    .end local v3  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4  # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6  # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v7  # "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 538
    .end local v2  # "i":I
    :cond_6e
    return-void
.end method

.method private findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 7
    .param p1, "autofillId"  # Landroid/view/autofill/AutofillId;

    .line 478
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 479
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_26

    .line 480
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): no view state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 483
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 484
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    if-nez v2, :cond_48

    .line 485
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findValueLocked(): no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 488
    :cond_48
    return-object v2
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 8
    .param p1, "autofillId"  # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 451
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_13

    .line 452
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    .line 457
    :cond_13
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 458
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v1, :cond_65

    .line 459
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_41

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): looking on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " previous sessions for autofillId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 464
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 465
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    nop

    .line 466
    invoke-direct {v3, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 467
    .local v4, "previousValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_62

    .line 468
    invoke-direct {v3}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    return-object v5

    .line 463
    .end local v3  # "previousSession":Lcom/android/server/autofill/Session;
    .end local v4  # "previousValue":Landroid/view/autofill/AutofillValue;
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 473
    .end local v2  # "i":I
    :cond_65
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 7
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2003
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2a

    .line 2004
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2005
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2006
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 2007
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 2003
    .end local v2  # "context":Landroid/service/autofill/FillContext;
    .end local v3  # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2010
    .end local v1  # "i":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7
    .param p1, "requestId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 949
    return-object v1

    .line 952
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 953
    .local v0, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1f

    .line 954
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 956
    .local v3, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1c

    .line 957
    return-object v3

    .line 953
    .end local v3  # "context":Landroid/service/autofill/FillContext;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 961
    .end local v2  # "i":I
    :cond_1f
    return-object v1
.end method

.method private getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 403
    .local v0, "numViewState":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 404
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1a

    .line 405
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 408
    .end local v2  # "i":I
    :cond_1a
    return-object v1
.end method

.method private getLastResponseIndexLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3396
    const/4 v0, -0x1

    .line 3397
    .local v0, "lastResponseIdx":I
    const/4 v1, -0x1

    .line 3398
    .local v1, "lastResponseId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v2, :cond_19

    .line 3399
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3400
    .local v2, "responseCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_19

    .line 3401
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_16

    .line 3402
    move v0, v3

    .line 3400
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3406
    .end local v2  # "responseCount":I
    .end local v3  # "i":I
    :cond_19
    return v0
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 9
    .param p1, "logPrefixFmt"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1217
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 1218
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1219
    :cond_18
    move-object v0, v1

    :goto_19
    nop

    .line 1220
    .local v0, "logPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v3, "AutofillSession"

    if-nez v2, :cond_37

    .line 1221
    if-eqz v0, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no contexts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_36
    return-object v1

    .line 1224
    :cond_37
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_56

    .line 1227
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_55

    if-eqz v0, :cond_55

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no responses on session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_55
    return-object v1

    .line 1233
    :cond_56
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v2

    .line 1234
    .local v2, "lastResponseIdx":I
    const-string v4, ", mViewStates="

    if-gez v2, :cond_82

    .line 1235
    if-eqz v0, :cond_81

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": did not get last response. mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_81
    return-object v1

    .line 1242
    :cond_82
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 1243
    .local v1, "response":Landroid/service/autofill/FillResponse;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_bb

    if-eqz v0, :cond_bb

    .line 1244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mContexts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_bb
    return-object v1
.end method

.method private getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 9
    .param p2, "id"  # Landroid/view/autofill/AutofillId;
    .param p3, "value"  # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ")",
            "Landroid/view/autofill/AutofillValue;"
        }
    .end annotation

    .line 1941
    .local p1, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    if-eqz p1, :cond_54

    if-nez p3, :cond_5

    goto :goto_54

    .line 1943
    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1944
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1945
    .local v1, "sanitized":Landroid/view/autofill/AutofillValue;
    :goto_15
    if-nez v1, :cond_53

    .line 1946
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InternalSanitizer;

    .line 1947
    .local v2, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    if-nez v2, :cond_20

    .line 1948
    return-object p3

    .line 1951
    :cond_20
    invoke-virtual {v2, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1952
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4e

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") sanitized to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_4e
    if-eqz v0, :cond_53

    .line 1956
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1959
    .end local v2  # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    :cond_53
    return-object v1

    .line 1941
    .end local v0  # "state":Lcom/android/server/autofill/ViewState;
    .end local v1  # "sanitized":Landroid/view/autofill/AutofillValue;
    :cond_54
    :goto_54
    return-object p3
.end method

.method private getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1254
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method private getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 3

    .line 3226
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3228
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 3229
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 9
    .param p1, "autofillId"  # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1977
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_60

    .line 1978
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 1979
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 1981
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_5d

    .line 1982
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1983
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_54

    .line 1984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValueFromContexts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_54
    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1988
    return-object v4

    .line 1977
    .end local v2  # "context":Landroid/service/autofill/FillContext;
    .end local v3  # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v4  # "value":Landroid/view/autofill/AutofillValue;
    :cond_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1992
    .end local v1  # "i":I
    :cond_60
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleLogContextCommitted()V
    .registers 7

    .line 1273
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1274
    :try_start_3
    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1275
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4c

    .line 1277
    if-nez v1, :cond_15

    .line 1278
    const-string v0, "AutofillSession"

    const-string v2, "handleLogContextCommitted(): last response is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-void

    .line 1284
    :cond_15
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1285
    .local v0, "genericUserData":Landroid/service/autofill/UserData;
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v2

    .line 1287
    .local v2, "packageUserData":Landroid/service/autofill/UserData;
    if-nez v2, :cond_25

    if-nez v0, :cond_25

    .line 1288
    const/4 v3, 0x0

    .local v3, "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_39

    .line 1289
    .end local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_25
    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2f

    .line 1290
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v2}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    .restart local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_39

    .line 1291
    .end local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_2f
    if-eqz v2, :cond_33

    .line 1292
    move-object v3, v2

    .restart local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_39

    .line 1294
    .end local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_33
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v3

    .line 1297
    .restart local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :goto_39
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v4

    .line 1300
    .local v4, "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    .line 1301
    invoke-direct {p0, v4, v3}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V

    goto :goto_4b

    .line 1303
    :cond_47
    const/4 v5, 0x0

    invoke-direct {p0, v5, v5}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1305
    :goto_4b
    return-void

    .line 1275
    .end local v0  # "genericUserData":Landroid/service/autofill/UserData;
    .end local v1  # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2  # "packageUserData":Landroid/service/autofill/UserData;
    .end local v3  # "userData":Landroid/service/autofill/FieldClassificationUserData;
    .end local v4  # "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .registers 4
    .param p1, "viewState"  # Lcom/android/server/autofill/ViewState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2457
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2459
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2460
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 2462
    :cond_f
    return-void
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 2471
    .local v0, "response":Landroid/service/autofill/FillResponse;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    return v1

    .line 2473
    :cond_9
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSaveUiPendingLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3387
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static synthetic lambda$LM4xf4dbxH_NTutQzBkaQNxKbV0(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$NtvZwhlT1c4eLjg2qI6EER2oCtY(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method public static synthetic lambda$cYu1t6lYVopApYW-vct82-7slZk(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    return-void
.end method

.method public static synthetic lambda$dldcS_opIdRI25w0DM6rSIaHIoc(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic lambda$triggerAugmentedAutofillLocked$3(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .registers 1
    .param p0, "remoteService"  # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 2808
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public static synthetic lambda$v6ZVyksJuHdWgJ1F8aoa_1LJWPo(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->handleLogContextCommitted()V

    return-void
.end method

.method private logAuthenticationStatusLocked(II)V
    .registers 5
    .param p1, "requestId"  # I
    .param p2, "status"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3423
    nop

    .line 3424
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3423
    const/16 v1, 0x5ad

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3425
    return-void
.end method

.method private logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;)V"
        }
    .end annotation

    .line 1309
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1311
    monitor-exit v0

    .line 1312
    return-void

    .line 1311
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 38
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;)V"
        }
    .end annotation

    .line 1317
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1318
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_c

    return-void

    .line 1320
    :cond_c
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    .line 1321
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const-string v4, "AutofillSession"

    if-nez v3, :cond_30

    .line 1322
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_2f
    return-void

    .line 1326
    :cond_30
    const/4 v3, 0x0

    .line 1327
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1328
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v6, 0x0

    .line 1329
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1331
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 1332
    .local v8, "hasAtLeastOneDataset":Z
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1333
    .local v9, "responseCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3c
    const-string v11, "adding ignored dataset "

    const-string/jumbo v12, "logContextCommitted() skipping idless dataset "

    const-string/jumbo v13, "logContextCommitted() no datasets at "

    if-ge v10, v9, :cond_fb

    .line 1334
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/FillResponse;

    .line 1335
    .local v14, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    .line 1336
    .local v15, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v15, :cond_d5

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_62

    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_db

    .line 1339
    :cond_62
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_63
    move/from16 v16, v2

    .end local v2  # "flags":I
    .local v16, "flags":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_d0

    .line 1340
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 1341
    .local v2, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v17, v5

    .end local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v17, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1342
    .local v5, "datasetId":Ljava/lang/String;
    if-nez v5, :cond_95

    .line 1343
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v18, :cond_92

    .line 1344
    move-object/from16 v18, v6

    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 1343
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_92
    move-object/from16 v18, v6

    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_c7

    .line 1347
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_95
    move-object/from16 v18, v6

    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1348
    .end local v8  # "hasAtLeastOneDataset":Z
    .local v6, "hasAtLeastOneDataset":Z
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_a5

    .line 1349
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    goto :goto_a5

    :cond_a3
    move v8, v6

    goto :goto_c7

    .line 1350
    :cond_a5
    :goto_a5
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_bb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_bb
    if-nez v3, :cond_c3

    .line 1352
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v8

    .line 1354
    :cond_c3
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v8, v6

    .line 1339
    .end local v2  # "dataset":Landroid/service/autofill/Dataset;
    .end local v5  # "datasetId":Ljava/lang/String;
    .end local v6  # "hasAtLeastOneDataset":Z
    .restart local v8  # "hasAtLeastOneDataset":Z
    :goto_c7
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_63

    .end local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d0
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_f1

    .line 1336
    .end local v13  # "j":I
    .end local v16  # "flags":I
    .end local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "flags":I
    .restart local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d5
    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1337
    .end local v2  # "flags":I
    .end local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16  # "flags":I
    .restart local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_db
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    .end local v14  # "response":Landroid/service/autofill/FillResponse;
    .end local v15  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_f1
    :goto_f1
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_3c

    .end local v16  # "flags":I
    .end local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2  # "flags":I
    .restart local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_fb
    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1360
    .end local v2  # "flags":I
    .end local v5  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10  # "i":I
    .restart local v16  # "flags":I
    .restart local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 1362
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-nez v8, :cond_114

    if-nez v2, :cond_114

    .line 1363
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_113

    .line 1364
    const-string/jumbo v5, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_113
    return-void

    .line 1370
    :cond_114
    const/4 v5, 0x0

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    .end local v17  # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18  # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "i":I
    .local v6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v10, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_119
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_3b7

    .line 1371
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/autofill/ViewState;

    .line 1372
    .local v14, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v15

    .line 1377
    .local v15, "state":I
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_39d

    .line 1379
    move-object/from16 v30, v1

    .end local v1  # "lastResponse":Landroid/service/autofill/FillResponse;
    .local v30, "lastResponse":Landroid/service/autofill/FillResponse;
    and-int/lit16 v1, v15, 0x800

    if-eqz v1, :cond_1e3

    .line 1380
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "datasetId":Ljava/lang/String;
    if-nez v1, :cond_15e

    .line 1383
    move-object/from16 v31, v2

    .end local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v31, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    .end local v15  # "state":I
    .local v17, "state":I
    const-string/jumbo v15, "logContextCommitted(): no dataset id on "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1389
    .end local v17  # "state":I
    .end local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v15  # "state":I
    :cond_15e
    move-object/from16 v31, v2

    move/from16 v17, v15

    .end local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v15  # "state":I
    .restart local v17  # "state":I
    .restart local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1390
    .local v2, "autofilledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 1391
    .local v15, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v2, :cond_1a8

    invoke-virtual {v2, v15}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a8

    .line 1392
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_19c

    .line 1393
    move-object/from16 v18, v2

    .end local v2  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .local v18, "autofilledValue":Landroid/view/autofill/AutofillValue;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    .end local v15  # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v19, "currentValue":Landroid/view/autofill/AutofillValue;
    const-string/jumbo v15, "logContextCommitted(): ignoring changed "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " because it has same value that was autofilled"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1392
    .end local v18  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15  # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_19c
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    .end local v2  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v18  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v19  # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1391
    .end local v18  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15  # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_1a8
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    .line 1399
    .end local v2  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v18  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v19  # "currentValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c5

    .line 1400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted() found changed state: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_1c5
    if-nez v6, :cond_1d3

    .line 1403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 1404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 1406
    :cond_1d3
    iget-object v2, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    .end local v1  # "datasetId":Ljava/lang/String;
    .end local v18  # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19  # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1409
    .end local v17  # "state":I
    .end local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v15, "state":I
    :cond_1e3
    move-object/from16 v31, v2

    move/from16 v17, v15

    .end local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v15  # "state":I
    .restart local v17  # "state":I
    .restart local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1410
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_21b

    .line 1411
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_213

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1411
    :cond_213
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_3a9

    .line 1418
    :cond_21b
    if-eqz v8, :cond_394

    .line 1419
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_21e
    if-ge v2, v9, :cond_389

    .line 1420
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    .line 1421
    .local v15, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v18, v3

    .end local v3  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 1422
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v3, :cond_35b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_242

    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_365

    .line 1427
    :cond_242
    const/16 v19, 0x0

    move/from16 v34, v19

    move-object/from16 v19, v7

    move/from16 v7, v34

    .local v7, "k":I
    .local v19, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_24a
    move/from16 v32, v8

    .end local v8  # "hasAtLeastOneDataset":Z
    .local v32, "hasAtLeastOneDataset":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_34e

    .line 1428
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 1429
    .local v8, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v20, v3

    .end local v3  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v20, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1430
    .local v3, "datasetId":Ljava/lang/String;
    if-nez v3, :cond_281

    .line 1431
    sget-boolean v21, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v21, :cond_279

    .line 1432
    move/from16 v33, v9

    .end local v9  # "responseCount":I
    .local v33, "responseCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27b

    .line 1431
    .end local v33  # "responseCount":I
    .restart local v9  # "responseCount":I
    :cond_279
    move/from16 v33, v9

    .line 1427
    .end local v3  # "datasetId":Ljava/lang/String;
    .end local v8  # "dataset":Landroid/service/autofill/Dataset;
    .end local v9  # "responseCount":I
    .restart local v33  # "responseCount":I
    :goto_27b
    move-object/from16 v23, v1

    move-object/from16 v21, v12

    goto/16 :goto_340

    .line 1436
    .end local v33  # "responseCount":I
    .restart local v3  # "datasetId":Ljava/lang/String;
    .restart local v8  # "dataset":Landroid/service/autofill/Dataset;
    .restart local v9  # "responseCount":I
    :cond_281
    move/from16 v33, v9

    .line 1437
    .end local v9  # "responseCount":I
    .restart local v33  # "responseCount":I
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    .line 1438
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v8, v21

    .local v8, "l":I
    .local v22, "dataset":Landroid/service/autofill/Dataset;
    :goto_28d
    move-object/from16 v21, v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_30b

    .line 1439
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillValue;

    .line 1440
    .local v12, "candidate":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v12}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2fc

    .line 1441
    sget-boolean v23, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v23, :cond_2c8

    .line 1442
    move-object/from16 v23, v1

    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v23, "currentValue":Landroid/view/autofill/AutofillValue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v9

    .end local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v24, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const-string v9, "field "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was manually filled with value set by dataset "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cc

    .line 1441
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_2c8
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    .line 1446
    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_2cc
    if-nez v19, :cond_2d6

    .line 1447
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v19, v1

    goto :goto_2d8

    .line 1446
    :cond_2d6
    move-object/from16 v1, v19

    .line 1449
    .end local v19  # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_2d8
    iget-object v9, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1450
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1451
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_2f2

    .line 1452
    move-object/from16 v19, v9

    .end local v9  # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArraySet;

    move-object/from16 v25, v12

    .end local v12  # "candidate":Landroid/view/autofill/AutofillValue;
    .local v25, "candidate":Landroid/view/autofill/AutofillValue;
    const/4 v12, 0x1

    invoke-direct {v9, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 1453
    .end local v19  # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9  # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v12, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f6

    .line 1451
    .end local v25  # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v12  # "candidate":Landroid/view/autofill/AutofillValue;
    :cond_2f2
    move-object/from16 v19, v9

    move-object/from16 v25, v12

    .line 1455
    .end local v12  # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v25  # "candidate":Landroid/view/autofill/AutofillValue;
    :goto_2f6
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v1

    goto :goto_302

    .line 1440
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v25  # "candidate":Landroid/view/autofill/AutofillValue;
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v12  # "candidate":Landroid/view/autofill/AutofillValue;
    .local v19, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_2fc
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    .line 1438
    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v12  # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_302
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    goto :goto_28d

    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_30b
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    .line 1458
    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8  # "l":I
    .end local v9  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_319

    .line 1459
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_340

    .line 1460
    :cond_319
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_32f

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_32f
    if-nez v18, :cond_339

    .line 1464
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v18, v1

    goto :goto_33b

    .line 1463
    :cond_339
    move-object/from16 v1, v18

    .line 1466
    .end local v18  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_33b
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v1

    .line 1427
    .end local v1  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "datasetId":Ljava/lang/String;
    .end local v22  # "dataset":Landroid/service/autofill/Dataset;
    .end local v24  # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v18  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_340
    :goto_340
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_24a

    .end local v20  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33  # "responseCount":I
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v9, "responseCount":I
    :cond_34e
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v9  # "responseCount":I
    .restart local v20  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33  # "responseCount":I
    move-object/from16 v3, v18

    move-object/from16 v7, v19

    goto :goto_37d

    .line 1422
    .end local v19  # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v20  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32  # "hasAtLeastOneDataset":Z
    .end local v33  # "responseCount":I
    .restart local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v8, "hasAtLeastOneDataset":Z
    .restart local v9  # "responseCount":I
    :cond_35b
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .line 1423
    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8  # "hasAtLeastOneDataset":Z
    .end local v9  # "responseCount":I
    .restart local v20  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32  # "hasAtLeastOneDataset":Z
    .restart local v33  # "responseCount":I
    :goto_365
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_37b

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .end local v15  # "response":Landroid/service/autofill/FillResponse;
    .end local v20  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_37b
    move-object/from16 v3, v18

    .end local v18  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_37d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_21e

    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32  # "hasAtLeastOneDataset":Z
    .end local v33  # "responseCount":I
    .restart local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v8  # "hasAtLeastOneDataset":Z
    .restart local v9  # "responseCount":I
    :cond_389
    move-object/from16 v23, v1

    move-object/from16 v18, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8  # "hasAtLeastOneDataset":Z
    .end local v9  # "responseCount":I
    .restart local v18  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32  # "hasAtLeastOneDataset":Z
    .restart local v33  # "responseCount":I
    goto :goto_3a9

    .line 1418
    .end local v2  # "j":I
    .end local v18  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32  # "hasAtLeastOneDataset":Z
    .end local v33  # "responseCount":I
    .restart local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3  # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8  # "hasAtLeastOneDataset":Z
    .restart local v9  # "responseCount":I
    :cond_394
    move-object/from16 v23, v1

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8  # "hasAtLeastOneDataset":Z
    .end local v9  # "responseCount":I
    .restart local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32  # "hasAtLeastOneDataset":Z
    .restart local v33  # "responseCount":I
    goto :goto_3a9

    .line 1377
    .end local v17  # "state":I
    .end local v23  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v30  # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v32  # "hasAtLeastOneDataset":Z
    .end local v33  # "responseCount":I
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8  # "hasAtLeastOneDataset":Z
    .restart local v9  # "responseCount":I
    .local v15, "state":I
    :cond_39d
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    move/from16 v17, v15

    .line 1370
    .end local v1  # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8  # "hasAtLeastOneDataset":Z
    .end local v9  # "responseCount":I
    .end local v14  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v15  # "state":I
    .restart local v30  # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v32  # "hasAtLeastOneDataset":Z
    .restart local v33  # "responseCount":I
    :goto_3a9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_119

    .end local v30  # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v32  # "hasAtLeastOneDataset":Z
    .end local v33  # "responseCount":I
    .restart local v1  # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8  # "hasAtLeastOneDataset":Z
    .restart local v9  # "responseCount":I
    :cond_3b7
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v32, v8

    move/from16 v33, v9

    .line 1478
    .end local v1  # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v5  # "i":I
    .end local v8  # "hasAtLeastOneDataset":Z
    .end local v9  # "responseCount":I
    .restart local v30  # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v31  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v32  # "hasAtLeastOneDataset":Z
    .restart local v33  # "responseCount":I
    const/4 v1, 0x0

    .line 1479
    .local v1, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 1482
    .local v2, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_3f0

    .line 1483
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1484
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 1485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 1486
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_3d4
    if-ge v5, v4, :cond_3f0

    .line 1487
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 1488
    .local v8, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1489
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    .end local v8  # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v9  # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d4

    .line 1494
    .end local v4  # "size":I
    .end local v5  # "i":I
    :cond_3f0
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v23, v10

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-object/from16 v28, v11

    move/from16 v29, v12

    invoke-virtual/range {v17 .. v29}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1498
    return-void
.end method

.method private logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V
    .registers 28
    .param p1, "fcStrategy"  # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p2, "userData"  # Landroid/service/autofill/FieldClassificationUserData;

    .line 1507
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v15

    .line 1508
    .local v15, "userValues":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v14

    .line 1510
    .local v14, "categoryIds":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v19

    .line 1511
    .local v19, "defaultAlgorithm":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v20

    .line 1513
    .local v20, "defaultArgs":Landroid/os/Bundle;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1514
    .local v21, "algorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v22

    .line 1517
    .local v22, "args":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-eqz v15, :cond_a0

    if-eqz v14, :cond_a0

    array-length v0, v15

    array-length v1, v14

    if-eq v0, v1, :cond_26

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_a2

    .line 1525
    :cond_26
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v13

    .line 1527
    .local v13, "maxFieldsSize":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1528
    .local v7, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1532
    .local v8, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v1, v9, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1533
    :try_start_37
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1534
    .local v0, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_98

    .line 1536
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    .line 1539
    .local v12, "viewsSize":I
    new-array v10, v12, [Landroid/view/autofill/AutofillId;

    .line 1540
    .local v10, "autofillIds":[Landroid/view/autofill/AutofillId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v1

    .line 1541
    .local v11, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v1, 0x0

    .line 1542
    .local v1, "k":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v23, v1

    .end local v1  # "k":I
    .local v23, "k":I
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1543
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    add-int/lit8 v3, v23, 0x1

    .end local v23  # "k":I
    .local v3, "k":I
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v4, v10, v23

    .line 1545
    .end local v1  # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v23, v3

    goto :goto_51

    .line 1548
    .end local v3  # "k":I
    .restart local v23  # "k":I
    :cond_6d
    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v12

    move-object v4, v10

    move-object/from16 v24, v0

    move-object v0, v5

    .end local v0  # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .local v24, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    move-object v5, v15

    move-object v9, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;-><init>(Lcom/android/server/autofill/Session;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v9, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v11

    .end local v11  # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v0, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    move-object v11, v9

    .line 1615
    .local v11, "callback":Landroid/os/RemoteCallback;
    move-object v1, v10

    .end local v10  # "autofillIds":[Landroid/view/autofill/AutofillId;
    .local v1, "autofillIds":[Landroid/view/autofill/AutofillId;
    move-object/from16 v10, p1

    move v2, v12

    .end local v12  # "viewsSize":I
    .local v2, "viewsSize":I
    move-object v12, v0

    move v3, v13

    .end local v13  # "maxFieldsSize":I
    .local v3, "maxFieldsSize":I
    move-object v13, v15

    move-object v4, v14

    .end local v14  # "categoryIds":[Ljava/lang/String;
    .end local v15  # "userValues":[Ljava/lang/String;
    .local v4, "categoryIds":[Ljava/lang/String;
    .local v5, "userValues":[Ljava/lang/String;
    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1617
    return-void

    .line 1534
    .end local v0  # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v1  # "autofillIds":[Landroid/view/autofill/AutofillId;
    .end local v2  # "viewsSize":I
    .end local v3  # "maxFieldsSize":I
    .end local v4  # "categoryIds":[Ljava/lang/String;
    .end local v5  # "userValues":[Ljava/lang/String;
    .end local v11  # "callback":Landroid/os/RemoteCallback;
    .end local v23  # "k":I
    .end local v24  # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .restart local v13  # "maxFieldsSize":I
    .restart local v14  # "categoryIds":[Ljava/lang/String;
    .restart local v15  # "userValues":[Ljava/lang/String;
    :catchall_98
    move-exception v0

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    .end local v13  # "maxFieldsSize":I
    .end local v14  # "categoryIds":[Ljava/lang/String;
    .end local v15  # "userValues":[Ljava/lang/String;
    .restart local v3  # "maxFieldsSize":I
    .restart local v4  # "categoryIds":[Ljava/lang/String;
    .restart local v5  # "userValues":[Ljava/lang/String;
    :goto_9c
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9e

    throw v0

    :catchall_9e
    move-exception v0

    goto :goto_9c

    .line 1517
    .end local v3  # "maxFieldsSize":I
    .end local v4  # "categoryIds":[Ljava/lang/String;
    .end local v5  # "userValues":[Ljava/lang/String;
    .end local v7  # "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v8  # "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    .restart local v14  # "categoryIds":[Ljava/lang/String;
    .restart local v15  # "userValues":[Ljava/lang/String;
    :cond_a0
    move-object v4, v14

    move-object v5, v15

    .line 1518
    .end local v14  # "categoryIds":[Ljava/lang/String;
    .end local v15  # "userValues":[Ljava/lang/String;
    .restart local v4  # "categoryIds":[Ljava/lang/String;
    .restart local v5  # "userValues":[Ljava/lang/String;
    :goto_a2
    const/4 v0, -0x1

    if-nez v5, :cond_a7

    move v1, v0

    goto :goto_a8

    :cond_a7
    array-length v1, v5

    .line 1519
    .local v1, "valuesLength":I
    :goto_a8
    if-nez v4, :cond_ab

    goto :goto_ac

    :cond_ab
    array-length v0, v4

    .line 1520
    .local v0, "idsLength":I
    :goto_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ids.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void
.end method

.method private logSaveShown()V
    .registers 4

    .line 1908
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    .line 1909
    return-void
.end method

.method private mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .registers 11
    .param p1, "forSave"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2130
    .local v0, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v0, :cond_de

    .line 2131
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_3b

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    .local v1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d8

    .line 2137
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2138
    .local v5, "previousSession":Lcom/android/server/autofill/Session;
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 2139
    .local v6, "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    if-nez v6, :cond_70

    .line 2140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): Not merging null contexts from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    goto :goto_d4

    .line 2144
    :cond_70
    if-eqz p1, :cond_75

    .line 2145
    invoke-direct {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2147
    :cond_75
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_a3

    .line 2148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_a3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2152
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v7, :cond_d4

    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v7, :cond_d4

    .line 2153
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_d0

    .line 2154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): setting client state from previous session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_d0
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2136
    .end local v5  # "previousSession":Lcom/android/server/autofill/Session;
    .end local v6  # "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_d4
    :goto_d4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_41

    .line 2160
    .end local v4  # "i":I
    :cond_d8
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e5

    .line 2166
    .end local v1  # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_de
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2168
    .restart local v1  # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :goto_e5
    return-object v1
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3
    .param p1, "category"  # I

    .line 3410
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "category"  # I
    .param p2, "servicePackageName"  # Ljava/lang/String;

    .line 3414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "sessionFinishedState"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2545
    .local p2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2546
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    return-void

    .line 2548
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v1, :cond_17

    .line 2549
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_1e

    .line 2550
    :cond_17
    if-eqz p1, :cond_1e

    .line 2551
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3a

    .line 2555
    :cond_1e
    :goto_1e
    goto :goto_38

    .line 2553
    :catch_1f
    move-exception v1

    .line 2554
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client no fill UI: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2556
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 2557
    return-void

    .line 2556
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V
    .registers 11
    .param p1, "requestId"  # I
    .param p2, "timedOut"  # Z
    .param p3, "message"  # Ljava/lang/CharSequence;

    .line 839
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 840
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_34

    .line 842
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v1

    return-void

    .line 846
    :cond_34
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_56

    .line 847
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishing session due to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    if-eqz p2, :cond_4a

    const-string/jumbo v4, "timeout"

    goto :goto_4c

    :cond_4a
    const-string v4, "failure"

    :goto_4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_56
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 851
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    .line 852
    .local v2, "requestLog":Landroid/metrics/LogMaker;
    if-nez v2, :cond_7d

    .line 853
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 855
    :cond_7d
    if-eqz p2, :cond_81

    const/4 v3, 0x2

    goto :goto_83

    :cond_81
    const/16 v3, 0xb

    :goto_83
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 857
    :goto_86
    if-eqz v0, :cond_c1

    .line 858
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v3

    .line 859
    .local v3, "targetSdk":I
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_b2

    .line 860
    const/4 v0, 0x0

    .line 861
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' because service\'s targetting API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_b2
    if-eqz p3, :cond_c1

    .line 865
    const/16 v4, 0x624

    .line 866
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 865
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 869
    .end local v2  # "requestLog":Landroid/metrics/LogMaker;
    .end local v3  # "targetSdk":I
    :cond_c1
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_9 .. :try_end_c2} :catchall_d4

    .line 870
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 872
    if-eqz v0, :cond_d0

    .line 873
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 875
    :cond_d0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 876
    return-void

    .line 869
    :catchall_d4
    move-exception v2

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v2
.end method

.method private processNullResponseLocked(II)V
    .registers 8
    .param p1, "requestId"  # I
    .param p2, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2671
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 2672
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x10400b9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2675
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 2678
    .local v0, "context":Landroid/service/autofill/FillContext;
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_20

    .line 2679
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    .line 2680
    .local v2, "structure":Landroid/app/assist/AssistStructure;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2681
    .local v2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_36

    .line 2682
    .end local v2  # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNullResponseLocked(): no context for req "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const/4 v2, 0x0

    .line 2686
    .restart local v2  # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_36
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 2690
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2691
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v3, :cond_73

    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_73

    .line 2692
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6b

    .line 2693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceling session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_6b
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 2698
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    goto :goto_c7

    .line 2700
    :cond_73
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_b7

    .line 2701
    and-int/lit8 v3, p2, 0x4

    const-string/jumbo v4, "keeping session "

    if-eqz v3, :cond_9b

    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 2706
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_b7
    :goto_b7
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 2712
    :try_start_b9
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_c1

    .line 2715
    goto :goto_c7

    .line 2713
    :catch_c1
    move-exception v3

    .line 2714
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error setting client to autofill-only"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2717
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_c7
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "newResponse"  # Landroid/service/autofill/FillResponse;
    .param p2, "newClientState"  # Landroid/os/Bundle;
    .param p3, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2830
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2832
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 2833
    .local v0, "requestId":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_46

    .line 2834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",newClientState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_46
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_52

    .line 2843
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 2845
    :cond_52
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2846
    if-eqz p2, :cond_5b

    move-object v1, p2

    goto :goto_5f

    :cond_5b
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_5f
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2848
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2849
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 2851
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_6d

    .line 2852
    return-void

    .line 2856
    :cond_6d
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2857
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2858
    return-void
.end method

.method private removeSelf()V
    .registers 3

    .line 3339
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3340
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3341
    monitor-exit v0

    .line 3342
    return-void

    .line 3341
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "oldResponse"  # Landroid/service/autofill/FillResponse;
    .param p2, "newResponse"  # Landroid/service/autofill/FillResponse;
    .param p3, "newClientState"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2660
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2662
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 2664
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2666
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2667
    return-void
.end method

.method private requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .registers 14
    .param p1, "viewState"  # Lcom/android/server/autofill/ViewState;
    .param p2, "newState"  # I
    .param p3, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 578
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    const-string v1, ", flags="

    const/4 v2, 0x1

    const-string v3, "AutofillSession"

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_f

    goto/16 :goto_aa

    .line 588
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 593
    :cond_12
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 594
    .local v0, "requestId":I
    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_12

    .line 597
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v4, v2

    .line 598
    .local v4, "ordinal":I
    const/16 v2, 0x38b

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v5, 0x5ae

    .line 599
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 600
    .local v2, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_3e

    .line 601
    const/16 v5, 0x5ac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 603
    :cond_3e
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_69

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting structure for request #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,requestId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_69
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 618
    :try_start_6c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v1, "receiverExtras":Landroid/os/Bundle;
    const-string v5, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7a} :catch_a8

    .line 622
    .local v5, "identity":J
    :try_start_7a
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v7, v8, v1, v9, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to request autofill data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_7a .. :try_end_9e} :catchall_a3

    .line 627
    :cond_9e
    :try_start_9e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 631
    .end local v1  # "receiverExtras":Landroid/os/Bundle;
    .end local v5  # "identity":J
    goto :goto_a9

    .line 627
    .restart local v1  # "receiverExtras":Landroid/os/Bundle;
    .restart local v5  # "identity":J
    :catchall_a3
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "requestId":I
    .end local v2  # "log":Landroid/metrics/LogMaker;
    .end local v4  # "ordinal":I
    .end local p0  # "this":Lcom/android/server/autofill/Session;
    .end local p1  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local p2  # "newState":I
    .end local p3  # "flags":I
    throw v3
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a8} :catch_a8

    .line 629
    .end local v1  # "receiverExtras":Landroid/os/Bundle;
    .end local v5  # "identity":J
    .restart local v0  # "requestId":I
    .restart local v2  # "log":Landroid/metrics/LogMaker;
    .restart local v4  # "ordinal":I
    .restart local p0  # "this":Lcom/android/server/autofill/Session;
    .restart local p1  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local p2  # "newState":I
    .restart local p3  # "flags":I
    :catch_a8
    move-exception v1

    .line 632
    :goto_a9
    return-void

    .line 579
    .end local v0  # "requestId":I
    .end local v2  # "log":Landroid/metrics/LogMaker;
    .end local v4  # "ordinal":I
    :cond_aa
    :goto_aa
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_d0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_d0
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 585
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 586
    return-void
.end method

.method private requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V
    .registers 8
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .param p2, "viewState"  # Lcom/android/server/autofill/ViewState;
    .param p3, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2187
    and-int/lit8 v0, p3, 0x1

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_2f

    .line 2188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2189
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-starting session on view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_29
    const/16 v0, 0x100

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2191
    return-void

    .line 2195
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    const-string v2, ": "

    if-eqz v0, :cond_5f

    .line 2196
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_59

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_59
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    goto :goto_81

    .line 2202
    :cond_5f
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_81

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting new partition for view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2203
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_81
    :goto_81
    return-void
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "client"  # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 702
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 703
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 704
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 715
    :try_start_10
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 719
    goto :goto_37

    .line 716
    :catch_1d
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not set binder death listener on autofill client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 720
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .registers 13
    .param p1, "response"  # Landroid/service/autofill/FillResponse;
    .param p2, "state"  # I
    .param p3, "clearResponse"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2865
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 2866
    .local v0, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 2867
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 2868
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 2869
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_2e

    .line 2870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring null dataset on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    goto :goto_31

    .line 2873
    :cond_2e
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2867
    .end local v4  # "dataset":Landroid/service/autofill/Dataset;
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .end local v3  # "i":I
    :cond_34
    goto :goto_55

    .line 2875
    :cond_35
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 2876
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_41
    if-ge v5, v4, :cond_55

    aget-object v6, v3, v5

    .line 2877
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v7

    .line 2878
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez p3, :cond_4f

    .line 2879
    invoke-virtual {v7, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_52

    .line 2881
    :cond_4f
    invoke-virtual {v7, v2}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2876
    .end local v6  # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7  # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 2885
    :cond_55
    :goto_55
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    .line 2886
    .local v3, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v3, :cond_7f

    .line 2887
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2888
    .local v4, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_6d

    .line 2889
    array-length v5, v4

    move v6, v1

    :goto_63
    if-ge v6, v5, :cond_6d

    aget-object v7, v4, v6

    .line 2890
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v7, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2889
    .end local v7  # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 2893
    :cond_6d
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 2894
    .local v5, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_7f

    .line 2895
    array-length v6, v5

    move v7, v1

    :goto_75
    if-ge v7, v6, :cond_7f

    aget-object v8, v5, v7

    .line 2896
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v8, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2895
    .end local v8  # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 2901
    .end local v4  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v5  # "optionalIds":[Landroid/view/autofill/AutofillId;
    :cond_7f
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2902
    .local v4, "authIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_90

    .line 2903
    array-length v5, v4

    :goto_86
    if-ge v1, v5, :cond_90

    aget-object v6, v4, v1

    .line 2904
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2903
    .end local v6  # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 2907
    :cond_90
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .registers 13
    .param p1, "response"  # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"  # Landroid/service/autofill/Dataset;
    .param p3, "state"  # I
    .param p4, "clearResponse"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2915
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 2916
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 2917
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 2918
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 2919
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 2920
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 2921
    .local v5, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    .line 2922
    .local v6, "datasetId":Ljava/lang/String;
    if-eqz v6, :cond_28

    .line 2923
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 2925
    :cond_28
    if-eqz p1, :cond_2e

    .line 2926
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_34

    .line 2927
    :cond_2e
    if-eqz p4, :cond_34

    .line 2928
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2917
    .end local v3  # "id":Landroid/view/autofill/AutofillId;
    .end local v4  # "value":Landroid/view/autofill/AutofillValue;
    .end local v5  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v6  # "datasetId":Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2931
    .end local v2  # "j":I
    :cond_37
    return-void
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 13
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2218
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2219
    return v1

    .line 2222
    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2223
    .local v0, "numResponses":I
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3e

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting a new partition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reached maximum of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2224
    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return v3

    .line 2229
    :cond_3e
    const/4 v2, 0x0

    .local v2, "responseNum":I
    :goto_3f
    if-ge v2, v0, :cond_a0

    .line 2230
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 2232
    .local v4, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 2233
    return v3

    .line 2236
    :cond_54
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    .line 2237
    .local v5, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v5, :cond_6f

    .line 2238
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 2239
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2240
    :cond_6e
    return v3

    .line 2244
    :cond_6f
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    .line 2245
    .local v6, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v6, :cond_92

    .line 2246
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2248
    .local v7, "numDatasets":I
    const/4 v8, 0x0

    .local v8, "dataSetNum":I
    :goto_7a
    if-ge v8, v7, :cond_92

    .line 2249
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    .line 2251
    .local v9, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v9, :cond_8f

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 2252
    return v3

    .line 2248
    .end local v9  # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_8f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7a

    .line 2257
    .end local v7  # "numDatasets":I
    .end local v8  # "dataSetNum":I
    :cond_92
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 2258
    return v3

    .line 2229
    .end local v4  # "response":Landroid/service/autofill/FillResponse;
    .end local v5  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .end local v6  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2262
    .end local v2  # "responseNum":I
    :cond_a0
    return v1
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 7
    .param p1, "authenticationId"  # I
    .param p2, "intent"  # Landroid/content/IntentSender;
    .param p3, "fillInIntent"  # Landroid/content/Intent;

    .line 3010
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 3011
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3012
    monitor-exit v0

    .line 3015
    goto :goto_17

    .line 3012
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    .end local p0  # "this":Lcom/android/server/autofill/Session;
    .end local p1  # "authenticationId":I
    .end local p2  # "intent":Landroid/content/IntentSender;
    .end local p3  # "fillInIntent":Landroid/content/Intent;
    :try_start_e
    throw v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_f} :catch_f

    .line 3013
    .restart local p0  # "this":Lcom/android/server/autofill/Session;
    .restart local p1  # "authenticationId":I
    .restart local p2  # "intent":Landroid/content/IntentSender;
    .restart local p3  # "fillInIntent":Landroid/content/Intent;
    :catch_f
    move-exception v0

    .line 3014
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .registers 19
    .param p1, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2729
    move-object/from16 v0, p0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2730
    return-object v2

    .line 2734
    :cond_8
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2735
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v1

    .line 2736
    .local v1, "supportedModes":I
    const-string v3, "AutofillSession"

    if-nez v1, :cond_1d

    .line 2737
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_1c
    return-object v2

    .line 2743
    :cond_1d
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2744
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v4

    .line 2745
    .local v4, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v4, :cond_30

    .line 2746
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_2f

    const-string/jumbo v5, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_2f
    return-object v2

    .line 2752
    :cond_30
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_15f

    .line 2753
    const/4 v12, 0x1

    .line 2759
    .local v12, "mode":I
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v5, :cond_40

    .line 2760
    const-string/jumbo v5, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    return-object v2

    .line 2764
    :cond_40
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2765
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v13

    .line 2767
    .local v13, "isWhitelisted":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aug:id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2769
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2773
    .local v14, "historyItem":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 2775
    if-nez v13, :cond_cb

    .line 2776
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_ca

    .line 2777
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2778
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not whitelisted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2777
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :cond_ca
    return-object v2

    .line 2783
    :cond_cb
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_10b

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling Augmented Autofill Service ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") on view "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " using suggestion mode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    invoke-static {v12}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " when server returned null for session "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2784
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_10b
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2792
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2793
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 2795
    .local v3, "currentValue":Landroid/view/autofill/AutofillValue;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_129

    .line 2796
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 2798
    :cond_129
    const/16 v5, 0x65e

    .line 2799
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2798
    invoke-direct {v0, v5, v6}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v15

    .line 2800
    .local v15, "log":Landroid/metrics/LogMaker;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2802
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-static {v5}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v16

    .line 2804
    .local v16, "focusedId":Landroid/view/autofill/AutofillId;
    iget v6, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v7, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v8, v0, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move-object v5, v4

    move-object/from16 v10, v16

    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 2807
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v5, :cond_15c

    .line 2808
    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;

    invoke-direct {v5, v4}, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2810
    :cond_15c
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object v5

    .line 2755
    .end local v2  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v12  # "mode":I
    .end local v13  # "isWhitelisted":Z
    .end local v14  # "historyItem":Ljava/lang/String;
    .end local v15  # "log":Landroid/metrics/LogMaker;
    .end local v16  # "focusedId":Landroid/view/autofill/AutofillId;
    :cond_15f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Smart Suggestion mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    return-object v2
.end method

.method private unlinkClientVultureLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_31

    .line 725
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 726
    .local v0, "unlinked":Z
    if-nez v0, :cond_2e

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinking vulture from death failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 731
    .end local v0  # "unlinked":Z
    :cond_31
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2563
    move-object/from16 v1, p0

    const-string v2, "AutofillSession"

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    .line 2564
    .local v3, "response":Landroid/service/autofill/FillResponse;
    if-nez v3, :cond_c

    return-void

    .line 2566
    :cond_c
    const/4 v0, 0x0

    .line 2567
    .local v0, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2568
    const/4 v5, 0x1

    .line 2569
    .local v5, "saveOnFinish":Z
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 2572
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v7, 0x1

    if-eqz v6, :cond_65

    .line 2573
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 2574
    .local v8, "saveTriggerId":Landroid/view/autofill/AutofillId;
    if-eqz v8, :cond_23

    .line 2575
    const/16 v9, 0x4cc

    invoke-direct {v1, v9}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 2577
    :cond_23
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    .line 2578
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2d

    move v10, v7

    goto :goto_2e

    :cond_2d
    move v10, v4

    :goto_2e
    iput-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2581
    iget-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v10, :cond_56

    .line 2582
    if-nez v0, :cond_3c

    .line 2583
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    .line 2585
    :cond_3c
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_49

    .line 2586
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2589
    :cond_49
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_56

    .line 2590
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2593
    :cond_56
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_60

    .line 2594
    const/4 v5, 0x0

    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    goto :goto_6b

    .line 2593
    :cond_60
    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    goto :goto_6b

    .line 2598
    .end local v8  # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .end local v9  # "flags":I
    :cond_65
    const/4 v9, 0x0

    .line 2599
    .restart local v9  # "flags":I
    const/4 v8, 0x0

    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    .line 2605
    .end local v0  # "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9  # "flags":I
    .local v5, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v13, "flags":I
    .local v14, "saveOnFinish":Z
    .local v15, "saveTriggerId":Landroid/view/autofill/AutofillId;
    :goto_6b
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    .line 2606
    .local v12, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v0, 0x0

    .line 2607
    .local v0, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-eqz v12, :cond_a9

    .line 2608
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_73
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_a7

    .line 2609
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    .line 2610
    .local v9, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 2611
    .local v10, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-nez v10, :cond_86

    goto :goto_a3

    .line 2613
    :cond_86
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_87
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_a3

    .line 2614
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 2615
    .local v4, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_9b

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9f

    .line 2616
    :cond_9b
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2613
    .end local v4  # "id":Landroid/view/autofill/AutofillId;
    :cond_9f
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_87

    .line 2608
    .end local v9  # "dataset":Landroid/service/autofill/Dataset;
    .end local v10  # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v11  # "j":I
    :cond_a3
    :goto_a3
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_73

    :cond_a7
    move-object v4, v0

    goto :goto_aa

    .line 2607
    .end local v8  # "i":I
    :cond_a9
    move-object v4, v0

    .line 2623
    .end local v0  # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v4, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_aa
    :try_start_aa
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_ac} :catch_113

    if-eqz v0, :cond_f7

    .line 2624
    :try_start_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateTrackedIdsLocked(): "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " => "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " triggerId: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " saveOnFinish:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " hasSaveInfo: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_e4

    goto :goto_e5

    :cond_e4
    const/4 v7, 0x0

    :goto_e5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_ef} :catch_f0

    goto :goto_f7

    .line 2630
    :catch_f0
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move/from16 v17, v14

    goto :goto_119

    .line 2628
    :cond_f7
    :goto_f7
    :try_start_f7
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v9, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v10

    iget-boolean v11, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2629
    invoke-static {v4}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v0
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_105} :catch_113

    .line 2628
    move-object v7, v12

    .end local v12  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move v12, v14

    move/from16 v16, v13

    .end local v13  # "flags":I
    .local v16, "flags":I
    move-object v13, v0

    move/from16 v17, v14

    .end local v14  # "saveOnFinish":Z
    .local v17, "saveOnFinish":Z
    move-object v14, v15

    :try_start_10d
    invoke-interface/range {v8 .. v14}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_110} :catch_111

    .line 2632
    goto :goto_11e

    .line 2630
    :catch_111
    move-exception v0

    goto :goto_119

    .end local v7  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v16  # "flags":I
    .end local v17  # "saveOnFinish":Z
    .restart local v12  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v13  # "flags":I
    .restart local v14  # "saveOnFinish":Z
    :catch_113
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move/from16 v17, v14

    .line 2631
    .end local v12  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v13  # "flags":I
    .end local v14  # "saveOnFinish":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v16  # "flags":I
    .restart local v17  # "saveOnFinish":Z
    :goto_119
    const-string v8, "Cannot set tracked ids"

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2633
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11e
    return-void
.end method

.method private updateValuesForSaveLocked()V
    .registers 16

    .line 2018
    nop

    .line 2019
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2021
    .local v0, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2022
    .local v1, "numContexts":I
    const/4 v2, 0x0

    .local v2, "contextNum":I
    :goto_10
    if-ge v2, v1, :cond_10b

    .line 2023
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 2025
    .local v3, "context":Landroid/service/autofill/FillContext;
    nop

    .line 2026
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    .line 2028
    .local v4, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v6, "updateValuesForSaveLocked(): updating "

    const-string v7, "AutofillSession"

    if-eqz v5, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_3e
    const/4 v5, 0x0

    .local v5, "viewStateNum":I
    :goto_3f
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_da

    .line 2031
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 2033
    .local v8, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v9, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2034
    .local v9, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2035
    .local v10, "value":Landroid/view/autofill/AutofillValue;
    if-nez v10, :cond_71

    .line 2036
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_d6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 2039
    :cond_71
    aget-object v11, v4, v5

    .line 2040
    .local v11, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v11, :cond_8a

    .line 2041
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): did not find node with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    goto :goto_d6

    .line 2044
    :cond_8a
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_a8

    .line 2045
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_a8
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2050
    .local v12, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    if-nez v12, :cond_b2

    .line 2052
    invoke-direct {p0, v0, v9, v10}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2054
    :cond_b2
    if-eqz v12, :cond_b8

    .line 2055
    invoke-virtual {v11, v12}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_d6

    .line 2056
    :cond_b8
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_d6

    .line 2057
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " because it failed sanitization"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    .end local v8  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v9  # "id":Landroid/view/autofill/AutofillId;
    .end local v10  # "value":Landroid/view/autofill/AutofillValue;
    .end local v11  # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v12  # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_d6
    :goto_d6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3f

    .line 2063
    .end local v5  # "viewStateNum":I
    :cond_da
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2065
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_107

    .line 2066
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " before calling service.save()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2022
    .end local v3  # "context":Landroid/service/autofill/FillContext;
    .end local v4  # "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    :cond_107
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 2071
    .end local v2  # "contextNum":I
    :cond_10b
    return-void
.end method

.method private writeLog(I)V
    .registers 4
    .param p1, "category"  # I

    .line 3418
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3419
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "e"  # Ljava/lang/Exception;
    .param p2, "fmt"  # Ljava/lang/String;
    .param p3, "args"  # [Ljava/lang/Object;

    .line 3439
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3440
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3441
    :try_start_7
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3442
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    .line 3444
    if-eqz p1, :cond_15

    .line 3445
    const-string v1, "AutofillSession"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 3447
    :cond_15
    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :goto_1a
    return-void

    .line 3442
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "requestId"  # I
    .param p2, "datasetIndex"  # I
    .param p3, "intent"  # Landroid/content/IntentSender;
    .param p4, "extras"  # Landroid/os/Bundle;

    .line 967
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticate(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; datasetIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; intentSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    .line 974
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    monitor-exit v0

    return-void

    .line 978
    :cond_50
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 979
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_5b

    .line 980
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 981
    monitor-exit v0

    return-void

    .line 983
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_79

    .line 985
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 987
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 988
    .local v0, "authenticationId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    .line 990
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 988
    invoke-static {v3, p0, v4, p3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 991
    return-void

    .line 983
    .end local v0  # "authenticationId":I
    .end local v1  # "fillInIntent":Landroid/content/Intent;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method autoFill(IILandroid/service/autofill/Dataset;Z)V
    .registers 10
    .param p1, "requestId"  # I
    .param p2, "datasetIndex"  # I
    .param p3, "dataset"  # Landroid/service/autofill/Dataset;
    .param p4, "generateEvent"  # Z

    .line 2954
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFill(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; datasetIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dataset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2959
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    .line 2960
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    monitor-exit v0

    return-void

    .line 2965
    :cond_50
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 2966
    if-eqz p4, :cond_65

    .line 2967
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2970
    :cond_65
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 2971
    monitor-exit v0

    return-void

    .line 2975
    :cond_6a
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2976
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2977
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 2978
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_8b

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 2980
    monitor-exit v0

    return-void

    .line 2982
    :cond_8b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v2

    .line 2984
    .local v2, "authenticationId":I
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 2986
    .end local v1  # "fillInIntent":Landroid/content/Intent;
    .end local v2  # "authenticationId":I
    monitor-exit v0

    .line 2987
    return-void

    .line 2986
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_2d .. :try_end_9a} :catchall_98

    throw v1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 14
    .param p1, "dataset"  # Landroid/service/autofill/Dataset;

    .line 3175
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3176
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 3177
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_102

    return-void

    .line 3183
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3184
    .local v1, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3185
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3186
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .line 3187
    .local v4, "waitingDatasetAuth":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, v1, :cond_9a

    .line 3188
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_47

    .line 3189
    goto :goto_97

    .line 3191
    :cond_47
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 3192
    .local v6, "viewId":Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3193
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3194
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/ViewState;

    .line 3195
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v7, :cond_97

    .line 3196
    invoke-virtual {v7}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v8

    const/16 v9, 0x40

    and-int/2addr v8, v9

    if-eqz v8, :cond_97

    .line 3197
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_93

    .line 3198
    const-string v8, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autofillApp(): view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " waiting auth"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_93
    const/4 v4, 0x1

    .line 3201
    invoke-virtual {v7, v9}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3187
    .end local v6  # "viewId":Landroid/view/autofill/AutofillId;
    .end local v7  # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 3204
    .end local v5  # "i":I
    :cond_9a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e8

    .line 3205
    if-eqz v4, :cond_a7

    .line 3206
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v5, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3208
    :cond_a7
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_c1

    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_c1
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v5, v6, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 3211
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e2

    .line 3212
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v5, :cond_d9

    .line 3213
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 3215
    :cond_d9
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    :cond_e2
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v5, p1, v6, v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_e8} :catch_e9
    .catchall {:try_start_26 .. :try_end_e8} :catchall_102

    .line 3221
    .end local v1  # "entryCount":I
    .end local v2  # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3  # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v4  # "waitingDatasetAuth":Z
    :cond_e8
    goto :goto_100

    .line 3219
    :catch_e9
    move-exception v1

    .line 3220
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_ea
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error autofilling activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_100
    monitor-exit v0

    .line 3223
    return-void

    .line 3222
    :catchall_102
    move-exception v1

    monitor-exit v0
    :try_end_104
    .catchall {:try_start_ea .. :try_end_104} :catchall_102

    throw v1
.end method

.method callSaveLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2078
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_22

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void

    .line 2083
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v2, 0x1

    if-nez v0, :cond_39

    .line 2084
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2085
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2084
    const-string v2, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    return-void

    .line 2089
    :cond_39
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSaveLocked("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_5d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_67

    .line 2092
    const-string v0, "callSaveLocked(): no contexts"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    return-void

    .line 2096
    :cond_67
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2100
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 2101
    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2103
    .local v0, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2105
    .local v1, "saveRequest":Landroid/service/autofill/SaveRequest;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    .line 2106
    return-void
.end method

.method public cancelSave()V
    .registers 5

    .line 1033
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1036
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 1037
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    monitor-exit v0

    return-void

    .line 1041
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_36

    .line 1042
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    return-void

    .line 1041
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method destroyAugmentedAutofillWindowsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3329
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 3330
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3333
    :cond_a
    return-void
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3245
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 3246
    const/4 v0, 0x0

    return-object v0

    .line 3248
    :cond_6
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 3249
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3250
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3251
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 3254
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3255
    .local v0, "totalRequests":I
    const-string v1, "destroyLocked(): logging "

    const-string v3, "AutofillSession"

    if-lez v0, :cond_52

    .line 3256
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requests"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_3f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    if-ge v4, v0, :cond_52

    .line 3258
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/metrics/LogMaker;

    .line 3259
    .local v5, "log":Landroid/metrics/LogMaker;
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3257
    .end local v5  # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 3263
    .end local v4  # "i":I
    :cond_52
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v4, :cond_58

    const/4 v4, 0x0

    goto :goto_5c

    .line 3264
    :cond_58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5c
    nop

    .line 3265
    .local v4, "totalAugmentedRequests":I
    if-lez v4, :cond_8d

    .line 3266
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_7a

    .line 3267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " augmented requests"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_7a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7b
    if-ge v1, v4, :cond_8d

    .line 3270
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/metrics/LogMaker;

    .line 3271
    .local v3, "log":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3269
    .end local v3  # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 3275
    .end local v1  # "i":I
    :cond_8d
    const/16 v1, 0x397

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v3, 0x5af

    .line 3276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3277
    .local v1, "log":Landroid/metrics/LogMaker;
    if-lez v4, :cond_a8

    .line 3278
    const/16 v3, 0x65f

    .line 3279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3278
    invoke-virtual {v1, v3, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3281
    :cond_a8
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_b5

    .line 3282
    const/16 v3, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3284
    :cond_b5
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3286
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v2
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .param p2, "keyEvent"  # Landroid/view/KeyEvent;

    .line 1075
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 1077
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    monitor-exit v0

    return-void

    .line 1081
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_65

    if-eqz v1, :cond_3e

    .line 1083
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_65

    .line 1086
    goto :goto_63

    .line 1084
    :catch_34
    move-exception v1

    .line 1085
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to dispatch unhandled key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    goto :goto_63

    .line 1088
    :cond_3e
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not dispatch unhandled key on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_63
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_35 .. :try_end_67} :catchall_65

    throw v1
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3026
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3027
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3029
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3030
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3031
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3034
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_88

    .line 3035
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    .line 3037
    :cond_88
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3038
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3040
    :goto_91
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3041
    .local v1, "requestLogsSizes":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3042
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a4
    const/16 v3, 0x23

    if-ge v2, v1, :cond_d5

    .line 3043
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3044
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 3045
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": req="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", log="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v6}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3042
    .end local v5  # "requestId":I
    .end local v6  # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 3048
    .end local v2  # "i":I
    :cond_d5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mResponses: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v5, "null"

    if-nez v2, :cond_e9

    .line 3050
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_113

    .line 3052
    :cond_e9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3053
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_f1
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_113

    .line 3054
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3055
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3053
    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 3058
    .end local v2  # "i":I
    :cond_113
    :goto_113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurrentViewId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3059
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDestroyed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3060
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mIsSaving: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3061
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingSaveUi: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3062
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3063
    .local v2, "numberViews":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mViewStates size: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3064
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_164
    if-ge v3, v2, :cond_17f

    .line 3065
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3066
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3064
    add-int/lit8 v3, v3, 0x1

    goto :goto_164

    .line 3069
    .end local v3  # "i":I
    :cond_17f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mContexts: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3070
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b6

    .line 3071
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3072
    .local v3, "numContexts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_191
    if-ge v5, v3, :cond_1b5

    .line 3073
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    .line 3075
    .local v6, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3076
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1b2

    .line 3077
    const-string v7, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v6}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 3072
    .end local v6  # "context":Landroid/service/autofill/FillContext;
    :cond_1b2
    add-int/lit8 v5, v5, 0x1

    goto :goto_191

    .line 3083
    .end local v3  # "numContexts":I
    .end local v5  # "i":I
    :cond_1b5
    goto :goto_1b9

    .line 3084
    :cond_1b6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    :goto_1b9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mHasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3088
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v3, :cond_1e2

    .line 3089
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mClientState: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->getSize()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3090
    const-string v3, " bytes"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    :cond_1e2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCompatMode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3093
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mUrlBar: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3094
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_201

    .line 3095
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22c

    .line 3097
    :cond_201
    const-string/jumbo v3, "id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3098
    const-string v3, " domain="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    const-string v3, " text="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 3101
    :goto_22c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSelectedDatasetIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3104
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_254

    .line 3105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    :cond_254
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v3, :cond_260

    .line 3108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    :cond_260
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v3, :cond_276

    .line 3111
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number augmented requests: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3112
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3115
    :cond_276
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_288

    .line 3116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3117
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3119
    :cond_288
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz v3, :cond_28f

    .line 3120
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3122
    :cond_28f
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;)V
    .registers 11
    .param p1, "requestId"  # I
    .param p2, "datasetIndex"  # I
    .param p3, "dataset"  # Landroid/service/autofill/Dataset;

    .line 1003
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 1005
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#fill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    monitor-exit v0

    return-void

    .line 1009
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_42

    .line 1010
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;

    .line 1012
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1010
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    return-void

    .line 1009
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 9
    .param p1, "id"  # Landroid/view/autofill/AutofillId;

    .line 414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 416
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 417
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 418
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 421
    :cond_1a
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    .local v3, "options":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_34

    .line 424
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    .line 425
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 426
    .local v5, "option":Ljava/lang/CharSequence;
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_32
    monitor-exit v0

    return-object v2

    .line 428
    .end local v4  # "index":I
    .end local v5  # "option":Ljava/lang/CharSequence;
    :cond_34
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v1  # "value":Landroid/view/autofill/AutofillValue;
    .end local v3  # "options":[Ljava/lang/CharSequence;
    :cond_4a
    monitor-exit v0

    .line 433
    return-object v2

    .line 432
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 4
    .param p1, "id"  # Landroid/view/autofill/AutofillId;

    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 440
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3300
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_26

    .line 3301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRemoveSelfIfForAugmentedAutofillOnly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-nez v0, :cond_2b

    return-void

    .line 3306
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 3307
    return-void
.end method

.method forceRemoveSelfLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 3296
    return-void
.end method

.method forceRemoveSelfLocked(I)V
    .registers 8
    .param p1, "clientState"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3311
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveSelfLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 3314
    .local v0, "isPendingSaveUi":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 3315
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3316
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3317
    if-nez v0, :cond_3c

    .line 3319
    :try_start_30
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 3322
    goto :goto_3c

    .line 3320
    :catch_36
    move-exception v2

    .line 3321
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error notifying client to finish session"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3324
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 3325
    return-void
.end method

.method getActivityTokenLocked()Landroid/os/IBinder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .registers 3

    .line 2538
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 2540
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSaveInfoFlagsLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1259
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    .line 1260
    .local v0, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    :goto_c
    return v1
.end method

.method isDestroyed()Z
    .registers 3

    .line 2532
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2533
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 2534
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3379
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isSavingLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1967
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    return v0
.end method

.method public synthetic lambda$cancelCurrentRequestLocked$0$Session(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "canceledRequest"  # Ljava/lang/Integer;
    .param p2, "err"  # Ljava/lang/Throwable;

    .line 551
    const-string v0, "AutofillSession"

    if-eqz p2, :cond_a

    .line 552
    const-string v1, "cancelCurrentRequest(): unexpected exception"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    return-void

    .line 557
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_51

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_51

    .line 558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 561
    .local v1, "numContexts":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_51

    .line 562
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4e

    .line 563
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCurrentRequest(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_48
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    goto :goto_51

    .line 561
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 569
    .end local v1  # "numContexts":I
    .end local v2  # "i":I
    :cond_51
    :goto_51
    return-void
.end method

.method public synthetic lambda$logFieldClassificationScore$2$Session(I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "viewsSize"  # I
    .param p2, "autofillIds"  # [Landroid/view/autofill/AutofillId;
    .param p3, "userValues"  # [Ljava/lang/String;
    .param p4, "categoryIds"  # [Ljava/lang/String;
    .param p5, "detectedFieldIds"  # Ljava/util/ArrayList;
    .param p6, "detectedFieldClassifications"  # Ljava/util/ArrayList;
    .param p7, "result"  # Landroid/os/Bundle;

    .line 1549
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v0, "AutofillSession"

    if-nez v5, :cond_1d

    .line 1550
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_18

    const-string/jumbo v6, "setFieldClassificationScore(): no results"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_18
    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1552
    return-void

    .line 1554
    :cond_1d
    const-string/jumbo v6, "scores"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 1555
    .local v6, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v6, :cond_3d

    .line 1556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No field classification score on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1559
    :cond_3d
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .line 1562
    .local v8, "j":I
    const/4 v7, 0x0

    :goto_40
    move/from16 v9, p1

    if-ge v7, v9, :cond_165

    .line 1563
    :try_start_44
    aget-object v10, p2, v7

    .line 1567
    .local v10, "autofillId":Landroid/view/autofill/AutofillId;
    const/4 v11, 0x0

    .line 1568
    .local v11, "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v8, 0x0

    :goto_48
    array-length v12, v2

    if-ge v8, v12, :cond_eb

    .line 1569
    aget-object v12, p4, v8

    .line 1570
    .local v12, "categoryId":Ljava/lang/String;
    iget-object v13, v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v13, v13, v7

    aget v13, v13, v8
    :try_end_53
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_44 .. :try_end_53} :catch_147

    .line 1571
    .local v13, "score":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    const-string v15, " and id "

    if-lez v14, :cond_c4

    .line 1572
    if-nez v11, :cond_63

    .line 1573
    :try_start_5c
    new-instance v14, Landroid/util/ArrayMap;

    array-length v5, v2

    invoke-direct {v14, v5}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v14

    .line 1575
    :cond_63
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1576
    .local v5, "currentScore":Ljava/lang/Float;
    if-eqz v5, :cond_95

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_95

    .line 1577
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_e3

    .line 1578
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping score "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " because it\'s less than "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 1583
    :cond_95
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_bb

    .line 1584
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding score "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_bb
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    nop

    .end local v5  # "currentScore":Ljava/lang/Float;
    goto :goto_e3

    :cond_c4
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_e3

    .line 1589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skipping score 0 at index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    .end local v12  # "categoryId":Ljava/lang/String;
    .end local v13  # "score":F
    :cond_e3
    :goto_e3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_48

    .line 1592
    :cond_eb
    if-nez v11, :cond_107

    .line 1593
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_13f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no score for autofillId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 1598
    :cond_107
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1599
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    const/4 v5, 0x0

    .end local v8  # "j":I
    .local v5, "j":I
    move v8, v5

    .end local v5  # "j":I
    .restart local v8  # "j":I
    :goto_112
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v8, v5, :cond_134

    .line 1600
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1601
    .local v5, "fieldId":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 1602
    .local v12, "score":F
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v5, v12}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    nop

    .end local v5  # "fieldId":Ljava/lang/String;
    .end local v12  # "score":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_112

    .line 1604
    :cond_134
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v5, Landroid/service/autofill/FieldClassification;

    invoke-direct {v5, v2}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5c .. :try_end_13f} :catch_147

    .line 1562
    .end local v2  # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v10  # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v11  # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_13f
    :goto_13f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_40

    .line 1607
    :catch_147
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v2, v10

    const/4 v5, 0x2

    aput-object v6, v2, v5

    const/4 v5, 0x3

    aput-object v0, v2, v5

    const-string v5, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-direct {v1, v0, v5, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    return-void

    .line 1610
    .end local v0  # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_165
    nop

    .line 1612
    invoke-direct {v1, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1613
    return-void
.end method

.method public synthetic lambda$setClientLocked$1$Session()V
    .registers 5

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handling death of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when saving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_25
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    if-eqz v1, :cond_2f

    .line 708
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_37

    .line 710
    :cond_2f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 712
    :goto_37
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public logContextCommitted()V
    .registers 3

    .line 1268
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1269
    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 20
    .param p1, "response"  # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"  # Landroid/view/autofill/AutofillId;
    .param p3, "value"  # Landroid/view/autofill/AutofillValue;

    .line 2479
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2480
    :try_start_5
    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_28

    .line 2481
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    monitor-exit v1

    return-void

    .line 2485
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_fe

    .line 2487
    const/4 v0, 0x0

    .line 2488
    .local v0, "filterText":Ljava/lang/String;
    if-eqz p3, :cond_3c

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_3d

    .line 2494
    :cond_3c
    move-object v13, v0

    .end local v0  # "filterText":Ljava/lang/String;
    .local v13, "filterText":Ljava/lang/String;
    :goto_3d
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2495
    :try_start_40
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v14, v0

    .line 2496
    .local v14, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v15, v0

    .line 2497
    .local v15, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_fb

    .line 2498
    if-eqz v14, :cond_f0

    if-nez v15, :cond_55

    goto/16 :goto_f0

    .line 2502
    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2503
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v10, v12, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2502
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 2506
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2507
    :try_start_74
    iget-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_eb

    .line 2509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 2510
    iget-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v4, v12, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v2, v4

    .line 2511
    .local v2, "duration":J
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_a8

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 2513
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shown in "

    .line 2514
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2516
    const-string v4, "AutofillSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    .end local v0  # "msg":Ljava/lang/StringBuilder;
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " app="

    .line 2519
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " svc="

    .line 2520
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latency="

    .line 2521
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    .local v0, "historyLog":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2523
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2525
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 2526
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2525
    invoke-direct {v12, v4, v5, v6}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 2528
    .end local v0  # "historyLog":Ljava/lang/StringBuilder;
    .end local v2  # "duration":J
    :cond_eb
    monitor-exit v1

    .line 2529
    return-void

    .line 2528
    :catchall_ed
    move-exception v0

    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_74 .. :try_end_ef} :catchall_ed

    throw v0

    .line 2499
    :cond_f0
    :goto_f0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFillReady(): no service label or icon"

    invoke-direct {v12, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2500
    return-void

    .line 2497
    .end local v14  # "serviceLabel":Ljava/lang/CharSequence;
    .end local v15  # "serviceIcon":Landroid/graphics/drawable/Drawable;
    :catchall_fb
    move-exception v0

    :try_start_fc
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v0

    .line 2485
    .end local v13  # "filterText":Ljava/lang/String;
    :catchall_fe
    move-exception v0

    :try_start_ff
    monitor-exit v1
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "requestId"  # I
    .param p2, "message"  # Ljava/lang/CharSequence;

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 24
    .param p1, "requestId"  # I
    .param p2, "response"  # Landroid/service/autofill/FillResponse;
    .param p3, "servicePackageName"  # Ljava/lang/String;
    .param p4, "requestFlags"  # I

    .line 741
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 742
    :try_start_b
    iget-boolean v0, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_2e

    .line 743
    const-string v0, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " destroyed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v5

    return-void

    .line 748
    :cond_2e
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    move-object v6, v0

    .line 749
    .local v6, "requestLog":Landroid/metrics/LogMaker;
    if-eqz v6, :cond_3f

    .line 750
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_56

    .line 752
    :cond_3f
    const-string v0, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_56
    const/16 v0, 0x38d

    if-nez v3, :cond_69

    .line 755
    if-eqz v6, :cond_64

    .line 756
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 758
    :cond_64
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 759
    monitor-exit v5

    return-void

    .line 762
    :cond_69
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 763
    .local v7, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-eqz v7, :cond_97

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_97

    .line 764
    const-string v0, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because field detection is disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 766
    monitor-exit v5

    return-void

    .line 768
    :cond_97
    monitor-exit v5
    :try_end_98
    .catchall {:try_start_b .. :try_end_98} :catchall_17f

    .line 770
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v8, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 772
    const/4 v5, 0x0

    .line 773
    .local v5, "sessionFinishedState":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 774
    .local v14, "disableDuration":J
    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-lez v8, :cond_12d

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v13

    .line 776
    .local v13, "flags":I
    and-int/lit8 v8, v13, 0x2

    if-eqz v8, :cond_c4

    .line 777
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v10, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v18, v10

    move-wide v10, v14

    move v0, v13

    .end local v13  # "flags":I
    .local v0, "flags":I
    move/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_d5

    .line 780
    .end local v0  # "flags":I
    .restart local v13  # "flags":I
    :cond_c4
    move v0, v13

    .end local v13  # "flags":I
    .restart local v0  # "flags":I
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v13, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide v10, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 784
    :goto_d5
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_100

    .line 785
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 786
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_ff

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service disabled autofill for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", but session is kept for augmented autofill only"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AutofillSession"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_ff
    return-void

    .line 792
    :cond_100
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_12a

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Service disabled autofill for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    const-string v9, ": flags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    const-string v9, ", duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 797
    .local v8, "message":Ljava/lang/StringBuilder;
    invoke-static {v14, v15, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 798
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AutofillSession"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v8  # "message":Ljava/lang/StringBuilder;
    :cond_12a
    const/4 v5, 0x4

    move v8, v5

    goto :goto_12e

    .line 774
    .end local v0  # "flags":I
    :cond_12d
    move v8, v5

    .line 803
    .end local v5  # "sessionFinishedState":I
    .local v8, "sessionFinishedState":I
    :goto_12e
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_13f

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 804
    :cond_13f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_149

    :cond_145
    cmp-long v0, v14, v16

    if-lez v0, :cond_14c

    .line 807
    :cond_149
    invoke-direct {v1, v8, v5}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 810
    :cond_14c
    if-eqz v6, :cond_174

    .line 811
    nop

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_157

    const/4 v0, 0x0

    goto :goto_15f

    :cond_157
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_15f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 811
    const/16 v9, 0x38d

    invoke-virtual {v6, v9, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 813
    if-eqz v7, :cond_174

    .line 814
    const/16 v0, 0x4f7

    array-length v9, v7

    .line 816
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 814
    invoke-virtual {v6, v0, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 820
    :cond_174
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 821
    :try_start_177
    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 822
    monitor-exit v9

    .line 823
    return-void

    .line 822
    :catchall_17c
    move-exception v0

    monitor-exit v9
    :try_end_17e
    .catchall {:try_start_177 .. :try_end_17e} :catchall_17c

    throw v0

    .line 768
    .end local v6  # "requestLog":Landroid/metrics/LogMaker;
    .end local v7  # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8  # "sessionFinishedState":I
    .end local v14  # "disableDuration":J
    :catchall_17f
    move-exception v0

    :try_start_180
    monitor-exit v5
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .registers 4
    .param p1, "requestId"  # I

    .line 834
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 835
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 4
    .param p1, "operation"  # I
    .param p2, "token"  # Landroid/os/IBinder;

    .line 3369
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 3370
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9
    .param p1, "message"  # Ljava/lang/CharSequence;
    .param p2, "servicePackageName"  # Ljava/lang/String;

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 908
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 911
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_2f

    .line 912
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    monitor-exit v1

    return-void

    .line 916
    :cond_2f
    if-eqz v0, :cond_5b

    .line 917
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v2

    .line 918
    .local v2, "targetSdk":I
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_5b

    .line 919
    const/4 v0, 0x0

    .line 920
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' because service\'s targetting API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v2  # "targetSdk":I
    :cond_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_89

    .line 925
    const/16 v1, 0x396

    .line 926
    invoke-direct {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0xb

    .line 927
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 928
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_77

    .line 929
    const/16 v2, 0x624

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 931
    :cond_77
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 933
    if-eqz v0, :cond_85

    .line 934
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 936
    :cond_85
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 937
    return-void

    .line 924
    .end local v1  # "log":Landroid/metrics/LogMaker;
    :catchall_89
    move-exception v2

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v2
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p1, "servicePackageName"  # Ljava/lang/String;
    .param p2, "intentSender"  # Landroid/content/IntentSender;

    .line 882
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 885
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_29

    .line 886
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v0

    return-void

    .line 890
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_53

    .line 891
    const/16 v0, 0x396

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 892
    if-nez p2, :cond_35

    const/16 v1, 0xa

    goto :goto_36

    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 893
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 894
    if-eqz p2, :cond_4f

    .line 895
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_4c

    const-string v1, "AutofillSession"

    const-string v2, "Starting intent sender on save()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;)V

    .line 900
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 901
    return-void

    .line 890
    .end local v0  # "log":Landroid/metrics/LogMaker;
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/autofill/RemoteFillService;

    .line 996
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "removing session because service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 998
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 124
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method removeSelfLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3350
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSelfLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_47

    .line 3352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeSelfLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    return-void

    .line 3356
    :cond_47
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3357
    const-string/jumbo v0, "removeSelfLocked() ignored, waiting for pending save ui"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    return-void

    .line 3361
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 3362
    .local v0, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 3363
    if-eqz v0, :cond_64

    .line 3364
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 3366
    :cond_64
    return-void
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "id"  # Landroid/view/autofill/AutofillId;

    .line 1097
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_d
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 1104
    goto :goto_15

    .line 1105
    :catchall_b
    move-exception v1

    goto :goto_17

    .line 1102
    :catch_d
    move-exception v1

    .line 1103
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_15
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw v1
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "presenter"  # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 1050
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 1052
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    monitor-exit v0

    return-void

    .line 1056
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_79

    if-eqz v1, :cond_4e

    .line 1058
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1059
    .local v1, "view":Lcom/android/server/autofill/ViewState;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_44
    .catchall {:try_start_2c .. :try_end_43} :catchall_79

    .line 1063
    .end local v1  # "view":Lcom/android/server/autofill/ViewState;
    goto :goto_77

    .line 1061
    :catch_44
    move-exception v1

    .line 1062
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_45
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to show fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    goto :goto_77

    .line 1065
    :cond_4e
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_77

    .line 1066
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not show full UI on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_77
    :goto_77
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_45 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public save()V
    .registers 5

    .line 1018
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 1020
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    monitor-exit v0

    return-void

    .line 1024
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_35

    .line 1025
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    return-void

    .line 1024
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .registers 12
    .param p1, "data"  # Landroid/os/Bundle;
    .param p2, "authenticationId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1136
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_22

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1141
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_44

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationResultLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no responses"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1146
    return-void

    .line 1148
    :cond_44
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 1149
    .local v0, "requestId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 1150
    .local v2, "authenticatedResponse":Landroid/service/autofill/FillResponse;
    if-eqz v2, :cond_138

    if-nez p1, :cond_56

    goto/16 :goto_138

    .line 1156
    :cond_56
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v3

    .line 1159
    .local v3, "datasetIdx":I
    const v4, 0xffff

    if-eq v3, v4, :cond_89

    .line 1160
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1161
    .local v5, "dataset":Landroid/service/autofill/Dataset;
    if-nez v5, :cond_89

    .line 1162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no dataset with index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on fill response"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1164
    return-void

    .line 1168
    .end local v5  # "dataset":Landroid/service/autofill/Dataset;
    :cond_89
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1169
    .local v5, "result":Landroid/os/Parcelable;
    const-string v6, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1170
    .local v6, "newClientState":Landroid/os/Bundle;
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_be

    .line 1171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthenticationResultLocked(): result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", clientState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", authenticationId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_be
    instance-of v7, v5, Landroid/service/autofill/FillResponse;

    if-eqz v7, :cond_ce

    .line 1175
    const/16 v1, 0x390

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1176
    move-object v1, v5

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v2, v1, v6}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto :goto_137

    .line 1177
    :cond_ce
    instance-of v7, v5, Landroid/service/autofill/Dataset;

    const/4 v8, 0x0

    if-eqz v7, :cond_118

    .line 1178
    if-eq v3, v4, :cond_f5

    .line 1179
    const/16 v4, 0x466

    invoke-direct {p0, v0, v4}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1181
    if-eqz v6, :cond_e7

    .line 1182
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_e5

    const-string v4, "Updating client state from auth dataset"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_e5
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1185
    :cond_e7
    move-object v1, v5

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1186
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-virtual {p0, v0, v3, v1, v8}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;Z)V

    .line 1188
    .end local v1  # "dataset":Landroid/service/autofill/Dataset;
    goto :goto_137

    .line 1189
    :cond_f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid index ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") for authentication id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 v1, 0x467

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_137

    .line 1195
    :cond_118
    if-eqz v5, :cond_12f

    .line 1196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service returned invalid auth type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_12f
    const/16 v1, 0x468

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1200
    invoke-direct {p0, v0, v8}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1202
    :goto_137
    return-void

    .line 1151
    .end local v3  # "datasetIdx":I
    .end local v5  # "result":Landroid/os/Parcelable;
    .end local v6  # "newClientState":Landroid/os/Bundle;
    :cond_138
    :goto_138
    const-string/jumbo v3, "no authenticated response"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1153
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
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
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2640
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 2641
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 2642
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2643
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v3, "AutofillSession"

    if-nez v2, :cond_2f

    .line 2644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutofillFailure(): no view for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    goto :goto_60

    .line 2647
    :cond_2f
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2648
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    .line 2649
    .local v4, "state":I
    or-int/lit16 v5, v4, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2650
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_60

    .line 2651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    .end local v1  # "id":Landroid/view/autofill/AutofillId;
    .end local v2  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4  # "state":I
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2654
    .end local v0  # "i":I
    :cond_63
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .registers 4
    .param p1, "hasIt"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1206
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void

    .line 1211
    :cond_22
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1212
    return-void
.end method

.method public showSaveLocked()Z
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1627
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_25

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return v13

    .line 1632
    :cond_25
    const-string/jumbo v0, "showSaveLocked(%s)"

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v14

    .line 1633
    .local v14, "response":Landroid/service/autofill/FillResponse;
    if-nez v14, :cond_30

    const/4 v1, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    :goto_34
    move-object v15, v1

    .line 1645
    .local v15, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v11, 0x1

    if-nez v15, :cond_5b

    .line 1646
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): no saveInfo from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_5a
    return v11

    .line 1650
    :cond_5b
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_86

    .line 1652
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): service asked to delay save"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_85
    return v13

    .line 1656
    :cond_86
    invoke-direct {v12, v15}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 1659
    .local v10, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v1

    .line 1661
    .local v9, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v1

    .line 1663
    .local v8, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 1664
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    const/4 v1, 0x1

    .line 1665
    .local v1, "allRequiredAreNotEmpty":Z
    const/4 v2, 0x0

    .line 1668
    .local v2, "atLeastOneChanged":Z
    const/4 v3, 0x0

    .line 1669
    .local v3, "isUpdate":Z
    if-eqz v7, :cond_221

    .line 1670
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a0
    array-length v5, v7

    if-ge v4, v5, :cond_21a

    .line 1671
    aget-object v5, v7, v4

    .line 1672
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_c8

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "null autofill id on "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AutofillSession"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    move/from16 v18, v1

    move/from16 v20, v2

    goto/16 :goto_1eb

    .line 1676
    :cond_c8
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1677
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1678
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_f0

    .line 1679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "AutofillSession"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v1, 0x0

    .line 1681
    move v13, v1

    goto/16 :goto_225

    .line 1684
    :cond_f0
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1685
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_100

    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_fd

    goto :goto_100

    :cond_fd
    move/from16 v18, v1

    goto :goto_133

    .line 1686
    :cond_100
    :goto_100
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1687
    .local v13, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_1f5

    .line 1688
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v17, :cond_130

    .line 1689
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1  # "allRequiredAreNotEmpty":Z
    .local v18, "allRequiredAreNotEmpty":Z
    const-string v1, "Value of required field "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t change; using initial value ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") instead"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "AutofillSession"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 1688
    .end local v18  # "allRequiredAreNotEmpty":Z
    .restart local v1  # "allRequiredAreNotEmpty":Z
    :cond_130
    move/from16 v18, v1

    .line 1692
    .end local v1  # "allRequiredAreNotEmpty":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    :goto_132
    move-object v6, v13

    .line 1702
    .end local v13  # "initialValue":Landroid/view/autofill/AutofillValue;
    :goto_133
    invoke-direct {v12, v10, v5, v6}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1703
    .end local v6  # "value":Landroid/view/autofill/AutofillValue;
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_15d

    .line 1704
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_159

    .line 1705
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "value of required field "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " failed sanitization"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "AutofillSession"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_159
    const/4 v6, 0x0

    .line 1708
    .end local v18  # "allRequiredAreNotEmpty":Z
    .local v6, "allRequiredAreNotEmpty":Z
    move v13, v6

    goto/16 :goto_225

    .line 1710
    .end local v6  # "allRequiredAreNotEmpty":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    :cond_15d
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1711
    invoke-virtual {v9, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1714
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e7

    .line 1715
    const/4 v11, 0x1

    .line 1716
    .local v11, "changed":Z
    if-nez v6, :cond_1b0

    .line 1718
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1719
    .restart local v13  # "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_1ab

    invoke-virtual {v13, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ab

    .line 1720
    sget-boolean v19, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v19, :cond_1a4

    .line 1721
    move-object/from16 v19, v0

    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .local v19, "viewState":Lcom/android/server/autofill/ViewState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2  # "atLeastOneChanged":Z
    .local v20, "atLeastOneChanged":Z
    const-string/jumbo v2, "id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a8

    .line 1720
    .end local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20  # "atLeastOneChanged":Z
    .restart local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2  # "atLeastOneChanged":Z
    :cond_1a4
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1724
    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2  # "atLeastOneChanged":Z
    .restart local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20  # "atLeastOneChanged":Z
    :goto_1a8
    const/4 v0, 0x0

    move v11, v0

    .end local v11  # "changed":Z
    .local v0, "changed":Z
    goto :goto_1af

    .line 1719
    .end local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20  # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2  # "atLeastOneChanged":Z
    .restart local v11  # "changed":Z
    :cond_1ab
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1726
    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2  # "atLeastOneChanged":Z
    .end local v13  # "initialValue":Landroid/view/autofill/AutofillValue;
    .restart local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20  # "atLeastOneChanged":Z
    :goto_1af
    goto :goto_1b5

    .line 1727
    .end local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20  # "atLeastOneChanged":Z
    .restart local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2  # "atLeastOneChanged":Z
    :cond_1b0
    move-object/from16 v19, v0

    move/from16 v20, v2

    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2  # "atLeastOneChanged":Z
    .restart local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20  # "atLeastOneChanged":Z
    const/4 v3, 0x1

    .line 1729
    :goto_1b5
    if-eqz v11, :cond_1e4

    .line 1730
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1e1

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found a change on required "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_1e1
    const/4 v0, 0x1

    move v2, v0

    .end local v20  # "atLeastOneChanged":Z
    .local v0, "atLeastOneChanged":Z
    goto :goto_1ed

    .line 1729
    .end local v0  # "atLeastOneChanged":Z
    .restart local v20  # "atLeastOneChanged":Z
    :cond_1e4
    move/from16 v2, v20

    goto :goto_1ed

    .line 1714
    .end local v11  # "changed":Z
    .end local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20  # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2  # "atLeastOneChanged":Z
    :cond_1e7
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1670
    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5  # "id":Landroid/view/autofill/AutofillId;
    .end local v6  # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v18  # "allRequiredAreNotEmpty":Z
    .local v1, "allRequiredAreNotEmpty":Z
    :goto_1eb
    move/from16 v2, v20

    .end local v1  # "allRequiredAreNotEmpty":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    :goto_1ed
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_a0

    .line 1694
    .end local v18  # "allRequiredAreNotEmpty":Z
    .restart local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v1  # "allRequiredAreNotEmpty":Z
    .restart local v5  # "id":Landroid/view/autofill/AutofillId;
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    .restart local v13  # "initialValue":Landroid/view/autofill/AutofillValue;
    :cond_1f5
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v20, v2

    .end local v0  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v1  # "allRequiredAreNotEmpty":Z
    .end local v2  # "atLeastOneChanged":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    .restart local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20  # "atLeastOneChanged":Z
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_215

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty value for required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_215
    const/4 v1, 0x0

    .line 1698
    .end local v18  # "allRequiredAreNotEmpty":Z
    .restart local v1  # "allRequiredAreNotEmpty":Z
    move v13, v1

    move/from16 v2, v20

    goto :goto_225

    .line 1670
    .end local v5  # "id":Landroid/view/autofill/AutofillId;
    .end local v6  # "value":Landroid/view/autofill/AutofillValue;
    .end local v13  # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v19  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20  # "atLeastOneChanged":Z
    .restart local v2  # "atLeastOneChanged":Z
    :cond_21a
    move/from16 v18, v1

    move/from16 v20, v2

    .end local v1  # "allRequiredAreNotEmpty":Z
    .end local v2  # "atLeastOneChanged":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    .restart local v20  # "atLeastOneChanged":Z
    move/from16 v13, v18

    goto :goto_225

    .line 1669
    .end local v4  # "i":I
    .end local v18  # "allRequiredAreNotEmpty":Z
    .end local v20  # "atLeastOneChanged":Z
    .restart local v1  # "allRequiredAreNotEmpty":Z
    .restart local v2  # "atLeastOneChanged":Z
    :cond_221
    move/from16 v18, v1

    .end local v1  # "allRequiredAreNotEmpty":Z
    .restart local v18  # "allRequiredAreNotEmpty":Z
    move/from16 v13, v18

    .line 1740
    .end local v18  # "allRequiredAreNotEmpty":Z
    .local v13, "allRequiredAreNotEmpty":Z
    :goto_225
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 1741
    .local v11, "optionalIds":[Landroid/view/autofill/AutofillId;
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_250

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allRequiredAreNotEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasOptional: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_243

    const/4 v1, 0x1

    goto :goto_244

    :cond_243
    const/4 v1, 0x0

    :goto_244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_250
    if-eqz v13, :cond_5f6

    .line 1751
    if-eqz v11, :cond_356

    if-eqz v2, :cond_258

    if-nez v3, :cond_356

    .line 1753
    :cond_258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_259
    array-length v1, v11

    if-ge v0, v1, :cond_351

    .line 1754
    aget-object v1, v11, v0

    .line 1755
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 1757
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v4, :cond_288

    .line 1758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no ViewState for optional "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_349

    .line 1761
    :cond_288
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_317

    .line 1762
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1763
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-direct {v12, v10, v1, v5}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1764
    .restart local v6  # "value":Landroid/view/autofill/AutofillValue;
    if-nez v6, :cond_2c6

    .line 1765
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_2c0

    .line 1766
    move/from16 v18, v2

    .end local v2  # "atLeastOneChanged":Z
    .local v18, "atLeastOneChanged":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3  # "isUpdate":Z
    .local v19, "isUpdate":Z
    const-string/jumbo v3, "value of opt. field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed sanitization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_349

    .line 1765
    .end local v18  # "atLeastOneChanged":Z
    .end local v19  # "isUpdate":Z
    .restart local v2  # "atLeastOneChanged":Z
    .restart local v3  # "isUpdate":Z
    :cond_2c0
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2  # "atLeastOneChanged":Z
    .end local v3  # "isUpdate":Z
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    goto/16 :goto_349

    .line 1771
    .end local v18  # "atLeastOneChanged":Z
    .end local v19  # "isUpdate":Z
    .restart local v2  # "atLeastOneChanged":Z
    .restart local v3  # "isUpdate":Z
    :cond_2c6
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2  # "atLeastOneChanged":Z
    .end local v3  # "isUpdate":Z
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    invoke-virtual {v9, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1773
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v6, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_310

    .line 1774
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_304

    .line 1775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    .local v20, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v4, "found a change on optional "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_306

    .line 1774
    .end local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_304
    move-object/from16 v20, v4

    .line 1778
    .end local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_306
    if-eqz v2, :cond_30a

    .line 1779
    const/4 v3, 0x1

    .end local v19  # "isUpdate":Z
    .restart local v3  # "isUpdate":Z
    goto :goto_30c

    .line 1778
    .end local v3  # "isUpdate":Z
    .restart local v19  # "isUpdate":Z
    :cond_30a
    move/from16 v3, v19

    .line 1781
    .end local v19  # "isUpdate":Z
    .restart local v3  # "isUpdate":Z
    :goto_30c
    const/4 v4, 0x1

    move/from16 v18, v4

    .end local v18  # "atLeastOneChanged":Z
    .local v4, "atLeastOneChanged":Z
    goto :goto_314

    .line 1773
    .end local v3  # "isUpdate":Z
    .end local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    :cond_310
    move-object/from16 v20, v4

    .line 1783
    .end local v2  # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6  # "value":Landroid/view/autofill/AutofillValue;
    .restart local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v3, v19

    .end local v19  # "isUpdate":Z
    .restart local v3  # "isUpdate":Z
    :goto_314
    move/from16 v2, v18

    goto :goto_34d

    .line 1785
    .end local v18  # "atLeastOneChanged":Z
    .end local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    .local v2, "atLeastOneChanged":Z
    .restart local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_317
    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v2  # "atLeastOneChanged":Z
    .end local v3  # "isUpdate":Z
    .end local v4  # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    .restart local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    invoke-direct {v12, v1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1786
    .local v2, "initialValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_344

    .line 1787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; initial value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_344
    if-eqz v2, :cond_349

    .line 1791
    invoke-virtual {v9, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    .end local v1  # "id":Landroid/view/autofill/AutofillId;
    .end local v18  # "atLeastOneChanged":Z
    .end local v19  # "isUpdate":Z
    .end local v20  # "viewState":Lcom/android/server/autofill/ViewState;
    .local v2, "atLeastOneChanged":Z
    .restart local v3  # "isUpdate":Z
    :cond_349
    :goto_349
    move/from16 v2, v18

    move/from16 v3, v19

    :goto_34d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_259

    :cond_351
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2  # "atLeastOneChanged":Z
    .end local v3  # "isUpdate":Z
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    goto :goto_35a

    .line 1796
    .end local v0  # "i":I
    .end local v18  # "atLeastOneChanged":Z
    .end local v19  # "isUpdate":Z
    .restart local v2  # "atLeastOneChanged":Z
    .restart local v3  # "isUpdate":Z
    :cond_356
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2  # "atLeastOneChanged":Z
    .end local v3  # "isUpdate":Z
    .restart local v18  # "atLeastOneChanged":Z
    .restart local v19  # "isUpdate":Z
    :goto_35a
    if-eqz v18, :cond_5e2

    .line 1797
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_367

    .line 1798
    const-string v0, "AutofillSession"

    const-string v1, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_367
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v6

    .line 1801
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_3c3

    .line 1802
    const/16 v0, 0x46d

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1805
    .local v1, "log":Landroid/metrics/LogMaker;
    :try_start_373
    invoke-virtual {v6, v12}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 1806
    .local v0, "isValid":Z
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_394

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_394
    if-eqz v0, :cond_399

    .line 1808
    const/16 v2, 0xa

    goto :goto_39a

    .line 1809
    :cond_399
    const/4 v2, 0x5

    .line 1807
    :goto_39a
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_39d
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_39d} :catch_3af

    .line 1815
    nop

    .line 1817
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1818
    if-nez v0, :cond_3c3

    .line 1819
    const-string v2, "AutofillSession"

    const-string/jumbo v3, "not showing save UI because fields failed validation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v2, 0x1

    return v2

    .line 1810
    .end local v0  # "isValid":Z
    :catch_3af
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1812
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1813
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1814
    const/4 v2, 0x1

    return v2

    .line 1826
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v1  # "log":Landroid/metrics/LogMaker;
    :cond_3c3
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 1827
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_4f0

    .line 1828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3ca
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e7

    .line 1829
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1830
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    nop

    .line 1831
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1832
    .local v2, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_405

    .line 1833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; savableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_405
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_406
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b9

    .line 1837
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 1838
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v5

    .end local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v5, v20

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 1839
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_447

    .line 1840
    sget-boolean v20, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v20, :cond_440

    .line 1841
    move-object/from16 v20, v6

    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .local v20, "validator":Landroid/service/autofill/InternalValidator;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v22, "requiredIds":[Landroid/view/autofill/AutofillId;
    const-string v7, "dataset has value for field that is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillSession"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v2

    goto/16 :goto_4ad

    .line 1840
    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_440
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    move-object/from16 v23, v2

    goto :goto_4ad

    .line 1845
    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_447
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    .line 1846
    .local v6, "datasetValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_490

    .line 1847
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_484

    .line 1848
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    .end local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v23, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    const-string v2, "found a dataset change on id "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": from "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "AutofillSession"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_486

    .line 1847
    .end local v23  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    :cond_484
    move-object/from16 v23, v2

    .line 1828
    .end local v1  # "dataset":Landroid/service/autofill/Dataset;
    .end local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3  # "j":I
    .end local v4  # "id":Landroid/view/autofill/AutofillId;
    .end local v5  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6  # "datasetValue":Landroid/view/autofill/AutofillValue;
    :goto_486
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    goto/16 :goto_3ca

    .line 1853
    .restart local v1  # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v3  # "j":I
    .restart local v4  # "id":Landroid/view/autofill/AutofillId;
    .restart local v5  # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v6  # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_490
    move-object/from16 v23, v2

    .end local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v23  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_4ad

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no dataset changes for id "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "AutofillSession"

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    .end local v4  # "id":Landroid/view/autofill/AutofillId;
    .end local v5  # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6  # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_4ad
    :goto_4ad
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    goto/16 :goto_406

    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_4b9
    move-object/from16 v23, v2

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .line 1855
    .end local v2  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3  # "j":I
    .end local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4e4

    .line 1856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_4e4
    const/16 v17, 0x1

    return v17

    .line 1828
    .end local v1  # "dataset":Landroid/service/autofill/Dataset;
    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23  # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_4e7
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    const/16 v17, 0x1

    .end local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    goto :goto_4f8

    .line 1827
    .end local v0  # "i":I
    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_4f0
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    const/16 v17, 0x1

    .line 1863
    .end local v5  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    :goto_4f8
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_519

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_519
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;

    invoke-static {v1, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v7

    .line 1872
    .local v7, "client":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1876
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1877
    :try_start_536
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v23, v0

    .line 1878
    .local v23, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v24, v0

    .line 1879
    .local v24, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v1
    :try_end_547
    .catchall {:try_start_536 .. :try_end_547} :catchall_5d0

    .line 1880
    if-eqz v23, :cond_5b6

    if-nez v24, :cond_55d

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move/from16 v15, v17

    const/4 v1, 0x0

    move-object v14, v7

    move-object/from16 v17, v11

    goto/16 :goto_5c6

    .line 1884
    :cond_55d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1885
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v5, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1884
    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v16, v5

    move-object v5, v15

    move-object/from16 v25, v6

    move-object/from16 v6, p0

    move-object/from16 v26, v14

    move-object v14, v7

    .end local v7  # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v26, "response":Landroid/service/autofill/FillResponse;
    move-object v7, v0

    move-object/from16 v27, v8

    .end local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v27, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    move-object/from16 v8, p0

    move-object/from16 v28, v9

    .end local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v28, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v9, v25

    move-object/from16 v25, v10

    .end local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .local v25, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    move/from16 v10, v19

    move-object/from16 v29, v15

    move/from16 v15, v17

    move-object/from16 v17, v11

    .end local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v17, "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v29, "saveInfo":Landroid/service/autofill/SaveInfo;
    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZ)V

    .line 1887
    if-eqz v14, :cond_5b2

    .line 1889
    :try_start_595
    iget v0, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v14, v0, v15}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_59a
    .catch Landroid/os/RemoteException; {:try_start_595 .. :try_end_59a} :catch_59b

    .line 1892
    goto :goto_5b2

    .line 1890
    :catch_59b
    move-exception v0

    .line 1891
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_5b2
    :goto_5b2
    iput-boolean v15, v12, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1895
    const/4 v1, 0x0

    return v1

    .line 1880
    .end local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26  # "response":Landroid/service/autofill/FillResponse;
    .end local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v7  # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_5b6
    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move/from16 v15, v17

    const/4 v1, 0x0

    move-object v14, v7

    move-object/from16 v17, v11

    .line 1881
    .end local v7  # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26  # "response":Landroid/service/autofill/FillResponse;
    .restart local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_5c6
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "showSaveLocked(): no service label or icon"

    const/4 v2, 0x0

    invoke-direct {v12, v2, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1882
    return v15

    .line 1879
    .end local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v23  # "serviceLabel":Ljava/lang/CharSequence;
    .end local v24  # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .end local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26  # "response":Landroid/service/autofill/FillResponse;
    .end local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v7  # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :catchall_5d0
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move-object v14, v7

    .end local v7  # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26  # "response":Landroid/service/autofill/FillResponse;
    .restart local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_5de
    :try_start_5de
    monitor-exit v1
    :try_end_5df
    .catchall {:try_start_5de .. :try_end_5df} :catchall_5e0

    throw v0

    :catchall_5e0
    move-exception v0

    goto :goto_5de

    .line 1796
    .end local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v20  # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21  # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26  # "response":Landroid/service/autofill/FillResponse;
    .end local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_5e2
    move-object/from16 v22, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    const/4 v15, 0x1

    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14  # "response":Landroid/service/autofill/FillResponse;
    .end local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26  # "response":Landroid/service/autofill/FillResponse;
    .restart local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_605

    .line 1745
    .end local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v18  # "atLeastOneChanged":Z
    .end local v19  # "isUpdate":Z
    .end local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26  # "response":Landroid/service/autofill/FillResponse;
    .end local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v2, "atLeastOneChanged":Z
    .local v3, "isUpdate":Z
    .restart local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v14  # "response":Landroid/service/autofill/FillResponse;
    .restart local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_5f6
    move-object/from16 v22, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    const/4 v15, 0x1

    .line 1899
    .end local v7  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14  # "response":Landroid/service/autofill/FillResponse;
    .end local v15  # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v17  # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v22  # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v25  # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26  # "response":Landroid/service/autofill/FillResponse;
    .restart local v27  # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28  # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29  # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_605
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_632

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", atLeastOneChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_632
    return v15
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 6
    .param p1, "intentSender"  # Landroid/content/IntentSender;

    .line 1111
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 1113
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    monitor-exit v0

    return-void

    .line 1117
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1118
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_36

    .line 1119
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void

    .line 1118
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "newActivity"  # Landroid/os/IBinder;
    .param p2, "newClient"  # Landroid/os/IBinder;

    .line 686
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 688
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    monitor-exit v0

    return-void

    .line 692
    :cond_26
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 693
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 696
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 15
    .param p1, "id"  # Landroid/view/autofill/AutofillId;
    .param p2, "virtualBounds"  # Landroid/graphics/Rect;
    .param p3, "value"  # Landroid/view/autofill/AutofillValue;
    .param p4, "action"  # I
    .param p5, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2268
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_20

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return-void

    .line 2273
    :cond_20
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 2274
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v2, "updateLocked("

    if-eqz v0, :cond_5c

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_5c
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2280
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_c3

    .line 2281
    if-eq p4, v5, :cond_7a

    if-eq p4, v4, :cond_7a

    if-ne p4, v3, :cond_70

    goto :goto_7a

    .line 2297
    :cond_70
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_79

    const-string v2, "Ignoring specific action when viewState=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_79
    return-void

    .line 2283
    :cond_7a
    :goto_7a
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_92

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating viewState for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_92
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v6

    .line 2285
    .local v6, "isIgnored":Z
    new-instance v7, Lcom/android/server/autofill/ViewState;

    .line 2286
    if-eqz v6, :cond_9d

    const/16 v8, 0x80

    goto :goto_9e

    :cond_9d
    move v8, v5

    :goto_9e
    invoke-direct {v7, p1, p0, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v7

    .line 2287
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    if-eqz v6, :cond_c3

    .line 2293
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_c2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(): ignoring view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_c2
    return-void

    .line 2302
    .end local v6  # "isIgnored":Z
    :cond_c3
    if-eq p4, v5, :cond_320

    if-eq p4, v3, :cond_283

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-eq p4, v3, :cond_255

    if-eq p4, v4, :cond_e4

    .line 2451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(): unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 2310
    :cond_e4
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v3, :cond_155

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_155

    .line 2312
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v2, :cond_f6

    move-object v2, v6

    goto :goto_102

    .line 2313
    :cond_f6
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_102
    nop

    .line 2314
    .local v2, "currentUrl":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_10e

    .line 2316
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "URL bar value changed, but current value is null"

    invoke-direct {p0, v6, v3, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    return-void

    .line 2319
    :cond_10e
    if-eqz p3, :cond_14b

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-nez v4, :cond_117

    goto :goto_14b

    .line 2324
    :cond_117
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2325
    .local v3, "newUrl":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 2326
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_12e

    const-string v4, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_12e
    return-void

    .line 2329
    :cond_12f
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v4, :cond_13d

    .line 2333
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_13c

    .line 2334
    const-string v4, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_13c
    return-void

    .line 2339
    :cond_13d
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_146

    const-string v4, "Finishing session because URL bar changed"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_146
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2341
    return-void

    .line 2321
    .end local v3  # "newUrl":Ljava/lang/String;
    :cond_14b
    :goto_14b
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p3, v1, v3

    const-string v3, "URL bar value changed to null or non-text: %s"

    invoke-direct {p0, v6, v3, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2322
    return-void

    .line 2344
    .end local v2  # "currentUrl":Ljava/lang/String;
    :cond_155
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32d

    .line 2345
    if-eqz p3, :cond_167

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 2346
    :cond_167
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    if-eqz v3, :cond_1cb

    .line 2347
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 2348
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1cb

    .line 2349
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    if-eqz v3, :cond_1cb

    .line 2350
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2351
    .local v3, "length":I
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1b6

    .line 2352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): resetting value that was "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars long"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_1b6
    const/16 v2, 0x464

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v5, 0x465

    .line 2356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2357
    .local v2, "log":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2361
    .end local v2  # "log":Landroid/metrics/LogMaker;
    .end local v3  # "length":I
    :cond_1cb
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2365
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2366
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    const/16 v3, 0x8

    if-eqz v2, :cond_232

    .line 2367
    invoke-virtual {v2, p3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f9

    .line 2368
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1f5

    .line 2369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignoring autofilled change on id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_1f5
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2372
    return-void

    .line 2375
    :cond_1f9
    iget-object v5, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v7}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_232

    .line 2376
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_232

    .line 2378
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_222

    .line 2379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "field changed after autofill on id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_222
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2382
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2383
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2389
    .end local v1  # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_232
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2393
    if-eqz p3, :cond_24b

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_23e

    goto :goto_24b

    .line 2396
    :cond_23e
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2399
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_245

    goto :goto_249

    :cond_245
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_249
    move-object v1, v6

    .local v1, "filterText":Ljava/lang/String;
    goto :goto_24c

    .line 2394
    .end local v1  # "filterText":Ljava/lang/String;
    :cond_24b
    :goto_24b
    const/4 v1, 0x0

    .line 2401
    .restart local v1  # "filterText":Ljava/lang/String;
    :goto_24c
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2402
    .end local v1  # "filterText":Ljava/lang/String;
    .end local v2  # "filledValue":Landroid/view/autofill/AutofillValue;
    goto/16 :goto_32d

    .line 2443
    :cond_255
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32d

    .line 2444
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_277

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_277
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2446
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2447
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    goto/16 :goto_32d

    .line 2405
    :cond_283
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2a5

    if-eqz p2, :cond_2a5

    .line 2406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entered on virtual child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_2a5
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2411
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2413
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v3, :cond_2d6

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2d6

    .line 2414
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2d5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_2d5
    return-void

    .line 2418
    :cond_2d6
    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_303

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_303

    .line 2419
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_303

    .line 2423
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2ff

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): augmented-autofillable"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_2ff
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 2427
    return-void

    .line 2430
    :cond_303
    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V

    .line 2433
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31c

    .line 2434
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2435
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2436
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2440
    :cond_31c
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2441
    goto :goto_32d

    .line 2305
    :cond_320
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2306
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2307
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2308
    nop

    .line 2453
    :cond_32d
    :goto_32d
    return-void
.end method
