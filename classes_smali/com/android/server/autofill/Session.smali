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
    .registers 30

    .line 640
    move-object v6, p0

    move/from16 v0, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 171
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 256
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 297
    new-instance v1, Lcom/android/server/autofill/Session$1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v1, v6, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    .line 641
    const/4 v1, 0x0

    if-gez v0, :cond_34

    .line 642
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Non-positive sessionId: %s"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    :cond_34
    iput v0, v6, Lcom/android/server/autofill/Session;->id:I

    .line 645
    move/from16 v7, p20

    iput v7, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 646
    move/from16 v0, p8

    iput v0, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 647
    move/from16 v0, p9

    iput v0, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 649
    move-object v0, p1

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 650
    move-object v0, p6

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 651
    move-object v0, p2

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 652
    move-object v0, p4

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 653
    if-nez p15, :cond_57

    goto :goto_65

    .line 654
    :cond_57
    new-instance v8, Lcom/android/server/autofill/RemoteFillService;

    move-object v0, v8

    move-object v1, p3

    move-object/from16 v2, p15

    move v3, p5

    move-object v4, p0

    move/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    move-object v1, v8

    :goto_65
    iput-object v1, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 656
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 657
    move/from16 v0, p12

    iput-boolean v0, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 658
    move-object/from16 v0, p13

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 659
    move-object/from16 v0, p14

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 660
    move-object/from16 v0, p16

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 661
    move/from16 v0, p17

    iput-boolean v0, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 662
    move/from16 v0, p19

    iput-boolean v0, v6, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 663
    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 665
    iget-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x38a

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

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
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session;)Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/Session;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .registers 3

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session;)Ljava/lang/Object;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/Session;)Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .registers 3

    .line 3454
    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    .line 3464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3462
    :cond_1e
    const-string p0, "VALUE_CHANGED"

    return-object p0

    .line 3460
    :cond_21
    const-string p0, "VIEW_EXITED"

    return-object p0

    .line 3458
    :cond_24
    const-string p0, "VIEW_ENTERED"

    return-object p0

    .line 3456
    :cond_27
    const-string p0, "START_SESSION"

    return-object p0
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3431
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 3432
    if-nez v0, :cond_29

    .line 3433
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no log for id "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    return-void

    .line 3437
    :cond_29
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3438
    return-void
.end method

.method private cancelAugmentedAutofillLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2817
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2818
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 2819
    const-string v1, "AutofillSession"

    if-nez v0, :cond_10

    .line 2820
    const-string v0, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    return-void

    .line 2823
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

    .line 2824
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 2825
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
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2995
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2997
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 2999
    if-nez v1, :cond_21

    .line 3000
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3001
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v0, p2, p1

    .line 3000
    const/4 p1, 0x0

    const-string v0, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3002
    return-object p1

    .line 3004
    :cond_21
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    const-string v1, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3005
    const-string p1, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3006
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2938
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2939
    if-eqz v0, :cond_e

    .line 2940
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_41

    .line 2942
    :cond_e
    new-instance v0, Lcom/android/server/autofill/ViewState;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 2943
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_35

    .line 2944
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

    .line 2946
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2947
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    :goto_41
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_48

    .line 2950
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 2952
    :cond_48
    return-object v0
.end method

.method private createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .registers 13
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
    if-nez v1, :cond_b

    return-object v0

    .line 1918
    :cond_b
    array-length v0, v1

    .line 1919
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1920
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

    move-result-object p1

    .line 1922
    const/4 v3, 0x0

    move v5, v3

    :goto_36
    if-ge v5, v0, :cond_78

    .line 1923
    aget-object v6, v1, v5

    .line 1924
    aget-object v7, p1, v5

    .line 1925
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_69

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
    :cond_69
    array-length v8, v7

    move v9, v3

    :goto_6b
    if-ge v9, v8, :cond_75

    aget-object v10, v7, v9

    .line 1930
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 1922
    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 1933
    :cond_78
    return-object v2
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;)V
    .registers 5

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
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_e} :catch_e

    .line 1129
    :catch_e
    move-exception p1

    .line 1130
    const-string v0, "AutofillSession"

    const-string v1, "Error launching auth intent"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    :goto_16
    return-void
.end method

.method private static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .registers 4

    .line 3170
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result p1

    .line 3171
    if-eqz p1, :cond_16

    .line 3172
    const-string p3, ", "

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3174
    :cond_16
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .registers 7

    .line 3127
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3128
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 3130
    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_32

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xb

    if-eq v0, v1, :cond_26

    .line 3134
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3132
    :cond_26
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3131
    :cond_2c
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_37

    .line 3133
    :cond_32
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3136
    :goto_37
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3137
    const-string v3, ", PKG="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    const-string v3, ", SERVICE="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x38c

    .line 3139
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 3138
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3140
    const-string v3, ", ORDINAL="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x5ae

    .line 3141
    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    .line 3140
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3142
    const/16 v3, 0x5ac

    const-string v4, "FLAGS"

    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3143
    const/16 v3, 0x38d

    const-string v4, "NUM_DATASETS"

    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3144
    const/16 v3, 0x479

    const-string v4, "UI_LATENCY"

    invoke-static {p0, p1, v4, v3}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3145
    const/16 v3, 0x5ad

    .line 3146
    invoke-static {p1, v3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v3

    .line 3147
    if-eqz v3, :cond_b9

    .line 3148
    const-string v4, ", AUTH_STATUS="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3149
    const/16 v4, 0x390

    if-eq v3, v4, :cond_ab

    packed-switch v3, :pswitch_data_c8

    .line 3158
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3155
    :pswitch_99  #0x468
    const-string v2, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3157
    :pswitch_9f  #0x467
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3153
    :pswitch_a5  #0x466
    const-string v2, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 3151
    :cond_ab
    const-string v2, "AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3160
    :goto_b0
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3162
    :cond_b9
    const/16 v0, 0x4f7

    const-string v1, "FC_IDS"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3164
    const/16 v0, 0x586

    const-string v1, "COMPAT_MODE"

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3166
    return-void

    :pswitch_data_c8
    .packed-switch 0x466
        :pswitch_a5  #00000466
        :pswitch_9f  #00000467
        :pswitch_99  #00000468
    .end packed-switch
.end method

.method private fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .registers 10
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

    move-result-object p1

    .line 506
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 507
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_6e

    .line 508
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 510
    aget-object v3, p1, v1

    .line 511
    if-nez v3, :cond_3b

    .line 512
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6b

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 519
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 520
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 521
    new-instance v6, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v6}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 524
    if-eqz v5, :cond_52

    invoke-virtual {v5, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 525
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 528
    :cond_52
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v5, :cond_68

    .line 530
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 532
    iget-boolean v2, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v2, :cond_68

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_68

    .line 533
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 536
    :cond_68
    invoke-virtual {v3, v6}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 507
    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 538
    :cond_6e
    return-void
.end method

.method private findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 479
    const-string v1, "AutofillSession"

    if-nez v0, :cond_26

    .line 480
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): no view state for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_24
    const/4 p1, 0x0

    return-object p1

    .line 483
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 484
    if-nez v0, :cond_48

    .line 485
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): no current value for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 488
    :cond_48
    return-object v0
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_13

    .line 452
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    return-object p1

    .line 457
    :cond_13
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_65

    .line 459
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_41

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValueLocked(): looking on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previous sessions for autofillId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 465
    nop

    .line 466
    invoke-direct {v2, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 467
    if-eqz v3, :cond_62

    .line 468
    invoke-direct {v2}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    return-object p1

    .line 463
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 473
    :cond_65
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .registers 5
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
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    .line 2004
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 2005
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    .line 2006
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 2007
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 2003
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2010
    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .registers 7
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
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1f

    .line 954
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 956
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1c

    .line 957
    return-object v3

    .line 953
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 961
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
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 404
    const/4 v2, 0x0

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

    .line 3398
    nop

    .line 3399
    nop

    .line 3400
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v1, -0x1

    if-eqz v0, :cond_1c

    .line 3401
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3402
    const/4 v2, 0x0

    move v3, v1

    :goto_d
    if-ge v2, v0, :cond_1b

    .line 3403
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_18

    .line 3404
    move v3, v2

    .line 3402
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    move v1, v3

    .line 3408
    :cond_1c
    return v1
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .registers 6
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

    move-result-object p1

    goto :goto_19

    .line 1219
    :cond_18
    move-object p1, v1

    .line 1220
    :goto_19
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v2, "AutofillSession"

    if-nez v0, :cond_36

    .line 1221
    if-eqz p1, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no contexts"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_35
    return-object v1

    .line 1224
    :cond_36
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_55

    .line 1227
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_54

    if-eqz p1, :cond_54

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no responses on session"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_54
    return-object v1

    .line 1233
    :cond_55
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v0

    .line 1234
    const-string v3, ", mViewStates="

    if-gez v0, :cond_81

    .line 1235
    if-eqz p1, :cond_80

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": did not get last response. mResponses="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_80
    return-object v1

    .line 1242
    :cond_81
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillResponse;

    .line 1243
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_ba

    if-eqz p1, :cond_ba

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mResponses="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContexts="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_ba
    return-object v0
.end method

.method private getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 7
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
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1945
    :goto_15
    if-nez v1, :cond_53

    .line 1946
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InternalSanitizer;

    .line 1947
    if-nez p1, :cond_20

    .line 1948
    return-object p3

    .line 1951
    :cond_20
    invoke-virtual {p1, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1952
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4e

    .line 1953
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") sanitized to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_4e
    if-eqz v0, :cond_53

    .line 1956
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1959
    :cond_53
    return-object v1

    .line 1941
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

    .line 3228
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3230
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 3231
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 6
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
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_60

    .line 1978
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    .line 1979
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    .line 1981
    if-eqz v1, :cond_5d

    .line 1982
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1983
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_54

    .line 1984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValueFromContexts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_54
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1988
    return-object v1

    .line 1977
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1992
    :cond_60
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleLogContextCommitted()V
    .registers 5

    .line 1273
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1274
    :try_start_3
    const-string v1, "logContextCommited(%s)"

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1275
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4b

    .line 1277
    if-nez v1, :cond_14

    .line 1278
    const-string v0, "AutofillSession"

    const-string v1, "handleLogContextCommitted(): last response is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-void

    .line 1284
    :cond_14
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1285
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    .line 1287
    const/4 v2, 0x0

    if-nez v1, :cond_25

    if-nez v0, :cond_25

    .line 1288
    move-object v1, v2

    goto :goto_39

    .line 1289
    :cond_25
    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    .line 1290
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v1}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    move-object v1, v3

    goto :goto_39

    .line 1291
    :cond_30
    if-eqz v1, :cond_33

    .line 1292
    goto :goto_39

    .line 1294
    :cond_33
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v1

    .line 1297
    :goto_39
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v0

    .line 1300
    if-eqz v1, :cond_47

    if-eqz v0, :cond_47

    .line 1301
    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V

    goto :goto_4a

    .line 1303
    :cond_47
    invoke-direct {p0, v2, v2}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1305
    :goto_4a
    return-void

    .line 1275
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2459
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2461
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2462
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 2464
    :cond_f
    return-void
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 2473
    if-nez v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 2475
    :cond_9
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSaveUiPendingLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3389
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

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public static synthetic lambda$v6ZVyksJuHdWgJ1F8aoa_1LJWPo(Lcom/android/server/autofill/Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->handleLogContextCommitted()V

    return-void
.end method

.method private logAuthenticationStatusLocked(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3425
    nop

    .line 3426
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3425
    const/16 v0, 0x5ad

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3427
    return-void
.end method

.method private logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
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
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 29
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
    move-object/from16 v0, p0

    const-string v1, "logContextCommited(%s)"

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1318
    if-nez v1, :cond_b

    return-void

    .line 1320
    :cond_b
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    .line 1321
    and-int/lit8 v3, v2, 0x1

    const-string v4, "AutofillSession"

    if-nez v3, :cond_2e

    .line 1322
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_2d
    return-void

    .line 1326
    :cond_2e
    nop

    .line 1327
    nop

    .line 1328
    nop

    .line 1329
    nop

    .line 1331
    nop

    .line 1332
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1333
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3c
    const-string v9, "adding ignored dataset "

    const-string v10, "logContextCommitted() skipping idless dataset "

    const-string v11, "logContextCommitted() no datasets at "

    if-ge v6, v2, :cond_d4

    .line 1334
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/autofill/FillResponse;

    .line 1335
    invoke-virtual {v13}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v13

    .line 1336
    if-eqz v13, :cond_ba

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_59

    goto :goto_ba

    .line 1339
    :cond_59
    move-object v11, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_5c
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_b7

    .line 1340
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 1341
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v15

    .line 1342
    if-nez v15, :cond_85

    .line 1343
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v15, :cond_b4

    .line 1344
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 1347
    :cond_85
    nop

    .line 1348
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_93

    .line 1349
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    goto :goto_93

    :cond_91
    const/4 v8, 0x1

    goto :goto_b4

    .line 1350
    :cond_93
    :goto_93
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_a9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_a9
    if-nez v11, :cond_b0

    .line 1352
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1354
    :cond_b0
    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    .line 1339
    :cond_b4
    :goto_b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_b7
    move v7, v8

    move-object v8, v11

    goto :goto_d0

    .line 1337
    :cond_ba
    :goto_ba
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_d0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_d0
    :goto_d0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3c

    .line 1360
    :cond_d4
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 1362
    if-nez v7, :cond_e6

    if-nez v1, :cond_e6

    .line 1363
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_e5

    .line 1364
    const-string v0, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_e5
    return-void

    .line 1370
    :cond_e6
    move-object/from16 v17, v8

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_ee
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v1, v8, :cond_317

    .line 1371
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 1372
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v13

    .line 1377
    and-int/lit8 v14, v13, 0x8

    if-eqz v14, :cond_30b

    .line 1379
    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_1a2

    .line 1380
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v13

    .line 1381
    if-nez v13, :cond_12a

    .line 1383
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "logContextCommitted(): no dataset id on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_30f

    .line 1389
    :cond_12a
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v14

    .line 1390
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 1391
    if-eqz v14, :cond_163

    invoke-virtual {v14, v15}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_163

    .line 1392
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_15d

    .line 1393
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "logContextCommitted(): ignoring changed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it has same value that was autofilled"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_30f

    .line 1392
    :cond_15d
    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_30f

    .line 1399
    :cond_163
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_17b

    .line 1400
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "logContextCommitted() found changed state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_17b
    if-nez v18, :cond_18c

    .line 1403
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    goto :goto_190

    .line 1402
    :cond_18c
    move-object/from16 v14, v18

    move-object/from16 v15, v19

    .line 1406
    :goto_190
    iget-object v8, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    move/from16 v23, v2

    move/from16 v25, v7

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    goto/16 :goto_30f

    .line 1409
    :cond_1a2
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1410
    if-nez v13, :cond_1d1

    .line 1411
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_1cb

    .line 1412
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_30f

    .line 1411
    :cond_1cb
    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_30f

    .line 1418
    :cond_1d1
    if-eqz v7, :cond_306

    .line 1419
    move-object v14, v6

    const/4 v6, 0x0

    :goto_1d5
    if-ge v6, v2, :cond_300

    .line 1420
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    .line 1421
    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    .line 1422
    if-eqz v15, :cond_2de

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f1

    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_2e2

    .line 1427
    :cond_1f1
    move-object/from16 v16, v14

    const/4 v14, 0x0

    :goto_1f4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_2d7

    .line 1428
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    .line 1429
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1430
    if-nez v5, :cond_222

    .line 1431
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_21c

    .line 1432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_21c
    move/from16 v23, v2

    move/from16 v25, v7

    goto/16 :goto_2cf

    .line 1436
    :cond_222
    nop

    .line 1437
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v3

    .line 1438
    const/4 v12, 0x0

    :goto_228
    move/from16 v23, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_29c

    .line 1439
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    .line 1440
    invoke-virtual {v13, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28f

    .line 1441
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_261

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    const-string v3, "field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was manually filled with value set by dataset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_263

    .line 1441
    :cond_261
    move-object/from16 v24, v3

    .line 1446
    :goto_263
    if-nez v16, :cond_26d

    .line 1447
    new-instance v16, Landroid/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v2, v16

    goto :goto_26f

    .line 1446
    :cond_26d
    move-object/from16 v2, v16

    .line 1449
    :goto_26f
    iget-object v3, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1450
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1451
    if-nez v3, :cond_287

    .line 1452
    new-instance v3, Landroid/util/ArraySet;

    move/from16 v25, v7

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 1453
    iget-object v7, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_289

    .line 1451
    :cond_287
    move/from16 v25, v7

    .line 1455
    :goto_289
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v2

    goto :goto_293

    .line 1440
    :cond_28f
    move-object/from16 v24, v3

    move/from16 v25, v7

    .line 1438
    :goto_293
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v7, v25

    goto :goto_228

    .line 1458
    :cond_29c
    move/from16 v25, v7

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a8

    .line 1459
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2cf

    .line 1460
    :cond_2a8
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2be

    .line 1461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_2be
    if-nez v17, :cond_2c8

    .line 1464
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v2, v17

    goto :goto_2ca

    .line 1463
    :cond_2c8
    move-object/from16 v2, v17

    .line 1466
    :goto_2ca
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    .line 1427
    :cond_2cf
    :goto_2cf
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v23

    move/from16 v7, v25

    goto/16 :goto_1f4

    :cond_2d7
    move/from16 v23, v2

    move/from16 v25, v7

    move-object/from16 v14, v16

    goto :goto_2f8

    .line 1422
    :cond_2de
    move/from16 v23, v2

    move/from16 v25, v7

    .line 1423
    :goto_2e2
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2f8

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_2f8
    :goto_2f8
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v23

    move/from16 v7, v25

    goto/16 :goto_1d5

    :cond_300
    move/from16 v23, v2

    move/from16 v25, v7

    move-object v6, v14

    goto :goto_30f

    .line 1418
    :cond_306
    move/from16 v23, v2

    move/from16 v25, v7

    goto :goto_30f

    .line 1377
    :cond_30b
    move/from16 v23, v2

    move/from16 v25, v7

    .line 1370
    :goto_30f
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v23

    move/from16 v7, v25

    goto/16 :goto_ee

    .line 1478
    :cond_317
    nop

    .line 1479
    nop

    .line 1482
    if-eqz v6, :cond_34b

    .line 1483
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1486
    const/4 v4, 0x0

    :goto_32a
    if-ge v4, v1, :cond_346

    .line 1487
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 1488
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 1489
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    add-int/lit8 v4, v4, 0x1

    goto :goto_32a

    :cond_346
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    goto :goto_34f

    .line 1482
    :cond_34b
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1494
    :goto_34f
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v14, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v15, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v16, v1

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, v2

    move/from16 v25, v0

    invoke-virtual/range {v13 .. v25}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1498
    return-void
.end method

.method private logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V
    .registers 19

    .line 1507
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v9

    .line 1508
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v10

    .line 1510
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 1511
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v12

    .line 1513
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v13

    .line 1514
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v14

    .line 1517
    if-eqz v9, :cond_8c

    if-eqz v10, :cond_8c

    array-length v1, v9

    array-length v2, v10

    if-eq v1, v2, :cond_24

    goto/16 :goto_8c

    .line 1525
    :cond_24
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v1

    .line 1527
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1528
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1532
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1533
    :try_start_35
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1534
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_89

    .line 1536
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1539
    new-array v4, v3, [Landroid/view/autofill/AutofillId;

    .line 1540
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1541
    const/4 v1, 0x0

    .line 1542
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/ViewState;

    .line 1543
    invoke-virtual {v5}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    add-int/lit8 v6, v1, 0x1

    iget-object v5, v5, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v5, v4, v1

    .line 1545
    move v1, v6

    goto :goto_4c

    .line 1548
    :cond_67
    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v0, v5

    move-object v5, v9

    move-object/from16 p2, v14

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;-><init>(Lcom/android/server/autofill/Session;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v14, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1615
    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1617
    return-void

    .line 1534
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    .line 1518
    :cond_8c
    :goto_8c
    const/4 v0, -0x1

    if-nez v9, :cond_91

    move v1, v0

    goto :goto_92

    :cond_91
    array-length v1, v9

    .line 1519
    :goto_92
    if-nez v10, :cond_95

    goto :goto_96

    :cond_95
    array-length v0, v10

    .line 1520
    :goto_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ids.length = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    if-eqz v0, :cond_dd

    .line 2131
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_3a

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
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    const/4 v4, 0x0

    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d7

    .line 2137
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2138
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 2139
    if-nez v6, :cond_6f

    .line 2140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): Not merging null contexts from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    goto :goto_d3

    .line 2144
    :cond_6f
    if-eqz p1, :cond_74

    .line 2145
    invoke-direct {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2147
    :cond_74
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_a2

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
    :cond_a2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2152
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v6, :cond_d3

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v6, :cond_d3

    .line 2153
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_cf

    .line 2154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): setting client state from previous session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_cf
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2136
    :cond_d3
    :goto_d3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_40

    .line 2160
    :cond_d7
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e4

    .line 2166
    :cond_dd
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2168
    :goto_e4
    return-object v1
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 3

    .line 3412
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    return-object p1
.end method

.method private newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6

    .line 3416
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    return-object p1
.end method

.method private notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2547
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2548
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    return-void

    .line 2550
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v1, :cond_17

    .line 2551
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-interface {p2, v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_1e

    .line 2552
    :cond_17
    if-eqz p1, :cond_1e

    .line 2553
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3a

    .line 2557
    :cond_1e
    :goto_1e
    goto :goto_38

    .line 2555
    :catch_1f
    move-exception p1

    .line 2556
    :try_start_20
    const-string p2, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client no fill UI: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2558
    :goto_38
    monitor-exit v0

    .line 2559
    return-void

    .line 2558
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V
    .registers 9

    .line 839
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 840
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_34

    .line 842
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") rejected - session: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    if-nez v2, :cond_7d

    .line 853
    const-string p2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 855
    :cond_7d
    if-eqz p2, :cond_81

    const/4 p1, 0x2

    goto :goto_83

    :cond_81
    const/16 p1, 0xb

    :goto_83
    invoke-virtual {v2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 857
    :goto_86
    if-eqz v0, :cond_c2

    .line 858
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result p1

    .line 859
    const/16 p2, 0x1d

    if-lt p1, p2, :cond_b3

    .line 860
    const/4 p2, 0x0

    .line 861
    const-string v0, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' because service\'s targetting API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    .line 864
    :cond_b3
    if-eqz p3, :cond_c2

    .line 865
    const/16 p1, 0x624

    .line 866
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 865
    invoke-virtual {v2, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 869
    :cond_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_9 .. :try_end_c3} :catchall_d5

    .line 870
    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 872
    if-eqz v0, :cond_d1

    .line 873
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 875
    :cond_d1
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 876
    return-void

    .line 869
    :catchall_d5
    move-exception p1

    :try_start_d6
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p1
.end method

.method private processNullResponseLocked(II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2673
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 2674
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x10400bc

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2677
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 2680
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_20

    .line 2681
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    .line 2682
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 2683
    goto :goto_36

    .line 2684
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNullResponseLocked(): no context for req "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    const/4 p1, 0x0

    .line 2688
    :goto_36
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 2692
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2693
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v0, :cond_73

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_73

    .line 2694
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_6b

    .line 2695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canceling session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :cond_6b
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 2700
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    goto :goto_c6

    .line 2702
    :cond_73
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b6

    .line 2703
    and-int/lit8 p2, p2, 0x4

    const-string v0, "keeping session "

    if-eqz p2, :cond_9a

    .line 2704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 2708
    :cond_9a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_b6
    :goto_b6
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 2714
    :try_start_b8
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 p2, 0x20

    invoke-interface {p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_bf} :catch_c0

    .line 2717
    goto :goto_c6

    .line 2715
    :catch_c0
    move-exception p1

    .line 2716
    const-string p2, "Error setting client to autofill-only"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2719
    :goto_c6
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2832
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2834
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 2835
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_46

    .line 2836
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

    .line 2841
    :cond_46
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_52

    .line 2845
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 2847
    :cond_52
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2848
    if-eqz p2, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    :goto_5e
    iput-object p2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2850
    const/4 p2, 0x0

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2851
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 2853
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez p1, :cond_6c

    .line 2854
    return-void

    .line 2858
    :cond_6c
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    .line 2859
    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2860
    return-void
.end method

.method private removeSelf()V
    .registers 3

    .line 3341
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3342
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3343
    monitor-exit v0

    .line 3344
    return-void

    .line 3343
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2662
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2664
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 2666
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2668
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2669
    return-void
.end method

.method private requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .registers 9
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
    sget-object p1, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 594
    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_12

    .line 597
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/2addr p2, v2

    .line 598
    const/16 v0, 0x38b

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x5ae

    .line 599
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 600
    if-eqz p3, :cond_3e

    .line 601
    const/16 v2, 0x5ac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 603
    :cond_3e
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_69

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting structure for request #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ,requestId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_69
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 618
    :try_start_6c
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 619
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7a} :catch_a8

    .line 622
    :try_start_7a
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {p1, v2, p2, v4, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_9e

    .line 624
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to request autofill data for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_7a .. :try_end_9e} :catchall_a3

    .line 627
    :cond_9e
    :try_start_9e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 631
    goto :goto_a9

    .line 627
    :catchall_a3
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a8} :catch_a8

    .line 629
    :catch_a8
    move-exception p1

    .line 632
    :goto_a9
    return-void

    .line 579
    :cond_aa
    :goto_aa
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_d0

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string p1, " and flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_29
    const/16 p1, 0x100

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2197
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_59
    const/16 p1, 0x20

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    goto :goto_81

    .line 2202
    :cond_5f
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p3, :cond_81

    .line 2203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not starting new partition for view "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2203
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_81
    :goto_81
    return-void
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 702
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 703
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 704
    new-instance p1, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 715
    :try_start_10
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {p1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 719
    goto :goto_37

    .line 716
    :catch_1d
    move-exception p1

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not set binder death listener on autofill client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutofillSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 720
    :goto_37
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2867
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 2868
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 2869
    move v3, v2

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 2870
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 2871
    if-nez v4, :cond_2e

    .line 2872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring null dataset on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutofillSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    goto :goto_31

    .line 2875
    :cond_2e
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2869
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2877
    :cond_34
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2878
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_40
    if-ge v4, v3, :cond_54

    aget-object v5, v0, v4

    .line 2879
    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 2880
    if-nez p3, :cond_4e

    .line 2881
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_51

    .line 2883
    :cond_4e
    invoke-virtual {v5, v1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2878
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 2887
    :cond_54
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p3

    .line 2888
    if-eqz p3, :cond_7e

    .line 2889
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    .line 2890
    if-eqz v0, :cond_6c

    .line 2891
    array-length v3, v0

    move v4, v2

    :goto_62
    if-ge v4, v3, :cond_6c

    aget-object v5, v0, v4

    .line 2892
    invoke-direct {p0, v5, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2891
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 2895
    :cond_6c
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object p3

    .line 2896
    if-eqz p3, :cond_7e

    .line 2897
    array-length v0, p3

    move v3, v2

    :goto_74
    if-ge v3, v0, :cond_7e

    aget-object v4, p3, v3

    .line 2898
    invoke-direct {p0, v4, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2897
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 2903
    :cond_7e
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    .line 2904
    if-eqz p1, :cond_8f

    .line 2905
    array-length p3, p1

    :goto_85
    if-ge v2, p3, :cond_8f

    aget-object v0, p1, v2

    .line 2906
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2905
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 2909
    :cond_8f
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2917
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 2918
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 2919
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 2920
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 2921
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 2922
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v3

    .line 2923
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    .line 2924
    if-eqz v4, :cond_28

    .line 2925
    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 2927
    :cond_28
    if-eqz p1, :cond_2e

    .line 2928
    invoke-virtual {v3, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_34

    .line 2929
    :cond_2e
    if-eqz p4, :cond_34

    .line 2930
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2919
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2933
    :cond_37
    return-void
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .registers 11
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
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3e

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting a new partition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because session "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reached maximum of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2224
    const-string v0, "AutofillSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return v3

    .line 2229
    :cond_3e
    move v2, v3

    :goto_3f
    if-ge v2, v0, :cond_a0

    .line 2230
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 2232
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
    if-eqz v5, :cond_6f

    .line 2238
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 2239
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2240
    :cond_6e
    return v3

    .line 2244
    :cond_6f
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 2245
    if-eqz v5, :cond_92

    .line 2246
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2248
    move v7, v3

    :goto_7a
    if-ge v7, v6, :cond_92

    .line 2249
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    .line 2251
    if-eqz v8, :cond_8f

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 2252
    return v3

    .line 2248
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 2257
    :cond_92
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 2258
    return v3

    .line 2229
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2262
    :cond_a0
    return v1
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 7

    .line 3012
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_f

    .line 3013
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3014
    monitor-exit v0

    .line 3017
    goto :goto_17

    .line 3014
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_f} :catch_f

    .line 3015
    :catch_f
    move-exception p1

    .line 3016
    const-string p2, "AutofillSession"

    const-string p3, "Error launching auth intent"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3018
    :goto_17
    return-void
.end method

.method private triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2731
    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2732
    return-object v0

    .line 2736
    :cond_6
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2737
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result p1

    .line 2738
    const-string v1, "AutofillSession"

    if-nez p1, :cond_1b

    .line 2739
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_1a
    return-object v0

    .line 2745
    :cond_1b
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2746
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v2

    .line 2747
    if-nez v2, :cond_2e

    .line 2748
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_2d

    const-string/jumbo p1, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_2d
    return-object v0

    .line 2754
    :cond_2e
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_15b

    .line 2755
    nop

    .line 2761
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez p1, :cond_3e

    .line 2762
    const-string/jumbo p1, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    return-object v0

    .line 2766
    :cond_3e
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2767
    invoke-virtual {p1, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result p1

    .line 2769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aug:id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " a="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2771
    invoke-static {v5}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " f="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " s="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2775
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 2777
    if-nez p1, :cond_ca

    .line 2778
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_c9

    .line 2779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2780
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not whitelisted "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2779
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_c9
    return-object v0

    .line 2785
    :cond_ca
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_10a

    .line 2786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calling Augmented Autofill Service ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") on view "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " using suggestion mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-static {v4}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when server returned null for session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2786
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_10a
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    .line 2794
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2795
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 2797
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez p1, :cond_128

    .line 2798
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 2800
    :cond_128
    const/16 p1, 0x65e

    .line 2801
    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2800
    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 2802
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 2806
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v6, p0, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 2809
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez p1, :cond_158

    .line 2810
    new-instance p1, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;

    invoke-direct {p1, v2}, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2812
    :cond_158
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object p1

    .line 2757
    :cond_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Smart Suggestion mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    return-object v0
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
    if-nez v0, :cond_2e

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlinking vulture from death failed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 731
    :cond_31
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .registers 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2565
    move-object/from16 v0, p0

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    .line 2566
    if-nez v3, :cond_c

    return-void

    .line 2568
    :cond_c
    nop

    .line 2569
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2570
    nop

    .line 2571
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    .line 2574
    const/4 v6, 0x1

    if-eqz v5, :cond_5e

    .line 2575
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 2576
    if-eqz v7, :cond_23

    .line 2577
    const/16 v8, 0x4cc

    invoke-direct {v0, v8}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 2579
    :cond_23
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v8

    .line 2580
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_2d

    move v9, v6

    goto :goto_2e

    :cond_2d
    move v9, v4

    :goto_2e
    iput-boolean v9, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2583
    iget-boolean v9, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v9, :cond_55

    .line 2584
    nop

    .line 2585
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 2587
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_47

    .line 2588
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2591
    :cond_47
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_56

    .line 2592
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_56

    .line 2583
    :cond_55
    move-object v9, v2

    .line 2595
    :cond_56
    :goto_56
    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_5c

    .line 2596
    move v14, v4

    goto :goto_63

    .line 2595
    :cond_5c
    move v14, v6

    goto :goto_63

    .line 2600
    :cond_5e
    nop

    .line 2601
    move-object v7, v2

    move-object v9, v7

    move v8, v4

    move v14, v6

    .line 2607
    :goto_63
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 2608
    nop

    .line 2609
    if-eqz v3, :cond_a1

    .line 2610
    move-object v10, v2

    move v2, v4

    :goto_6c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_a0

    .line 2611
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/Dataset;

    .line 2612
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 2613
    if-nez v11, :cond_7f

    goto :goto_9d

    .line 2615
    :cond_7f
    move-object v12, v10

    move v10, v4

    :goto_81
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_9c

    .line 2616
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillId;

    .line 2617
    if-eqz v9, :cond_95

    invoke-virtual {v9, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_99

    .line 2618
    :cond_95
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v12

    .line 2615
    :cond_99
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    :cond_9c
    move-object v10, v12

    .line 2610
    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_a0
    move-object v2, v10

    .line 2625
    :cond_a1
    :try_start_a1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_e5

    .line 2626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTrackedIdsLocked(): "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " => "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " triggerId: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " saveOnFinish:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " flags: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " hasSaveInfo: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_db

    move v4, v6

    :cond_db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_e5
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v11, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v9}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v12

    iget-boolean v13, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2631
    invoke-static {v2}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v15

    .line 2630
    move-object/from16 v16, v7

    invoke-interface/range {v10 .. v16}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_f8} :catch_f9

    .line 2634
    goto :goto_ff

    .line 2632
    :catch_f9
    move-exception v0

    .line 2633
    const-string v2, "Cannot set tracked ids"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2635
    :goto_ff
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
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2022
    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_10b

    .line 2023
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    .line 2025
    nop

    .line 2026
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    .line 2028
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v7, "updateValuesForSaveLocked(): updating "

    const-string v8, "AutofillSession"

    if-eqz v6, :cond_3f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_3f
    move v6, v2

    :goto_40
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_db

    .line 2031
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 2033
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2034
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 2035
    if-nez v11, :cond_72

    .line 2036
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_d7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 2039
    :cond_72
    aget-object v12, v5, v6

    .line 2040
    if-nez v12, :cond_8b

    .line 2041
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callSaveLocked(): did not find node with id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    goto :goto_d7

    .line 2044
    :cond_8b
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_a9

    .line 2045
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_a9
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 2050
    if-nez v9, :cond_b3

    .line 2052
    invoke-direct {p0, v0, v10, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v9

    .line 2054
    :cond_b3
    if-eqz v9, :cond_b9

    .line 2055
    invoke-virtual {v12, v9}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_d7

    .line 2056
    :cond_b9
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_d7

    .line 2057
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because it failed sanitization"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_d7
    :goto_d7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_40

    .line 2063
    :cond_db
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2065
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_107

    .line 2066
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " before calling service.save()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2022
    :cond_107
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 2071
    :cond_10b
    return-void
.end method

.method private writeLog(I)V
    .registers 3

    .line 3420
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3421
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 3441
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3442
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3443
    :try_start_7
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3444
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1b

    .line 3446
    if-eqz p1, :cond_15

    .line 3447
    const-string p3, "AutofillSession"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 3449
    :cond_15
    const-string p1, "AutofillSession"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    :goto_1a
    return-void

    .line 3444
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V
    .registers 8

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
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " destroyed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    monitor-exit v0

    return-void

    .line 978
    :cond_50
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p4

    .line 979
    if-nez p4, :cond_5b

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

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 987
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result p1

    .line 988
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    .line 990
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 988
    invoke-static {v0, p0, p1, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 991
    return-void

    .line 983
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p1
.end method

.method autoFill(IILandroid/service/autofill/Dataset;Z)V
    .registers 9

    .line 2956
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 2957
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

    .line 2960
    :cond_2a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2961
    :try_start_2d
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_50

    .line 2962
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " destroyed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    monitor-exit v0

    return-void

    .line 2967
    :cond_50
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_6a

    .line 2968
    if-eqz p4, :cond_65

    .line 2969
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object p2

    iget p4, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, p2, p4, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2972
    :cond_65
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 2973
    monitor-exit v0

    return-void

    .line 2977
    :cond_6a
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p4, v1, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2978
    const/4 p4, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {p0, p4, p3, v1, v2}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2979
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p4

    .line 2980
    if-nez p4, :cond_8b

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 2982
    monitor-exit v0

    return-void

    .line 2984
    :cond_8b
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result p1

    .line 2986
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 2988
    monitor-exit v0

    .line 2989
    return-void

    .line 2988
    :catchall_98
    move-exception p1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_2d .. :try_end_9a} :catchall_98

    throw p1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .registers 14

    .line 3177
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3178
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 3179
    const-string p1, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_104

    return-void

    .line 3185
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3188
    nop

    .line 3189
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_3c
    if-ge v5, v1, :cond_9d

    .line 3190
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_49

    .line 3191
    goto :goto_9a

    .line 3193
    :cond_49
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 3194
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3195
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 3197
    if-eqz v8, :cond_9a

    .line 3198
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v9

    const/16 v10, 0x40

    and-int/2addr v9, v10

    if-eqz v9, :cond_9a

    .line 3199
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_95

    .line 3200
    const-string v6, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autofillApp(): view "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " waiting auth"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_95
    nop

    .line 3203
    invoke-virtual {v8, v10}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    const/4 v6, 0x1

    .line 3189
    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 3206
    :cond_9d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ea

    .line 3207
    if-eqz v6, :cond_aa

    .line 3208
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3210
    :cond_aa
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c4

    const-string v1, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_c4
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v5, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 3213
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 3214
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v1, :cond_dc

    .line 3215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 3217
    :cond_dc
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3219
    :cond_e5
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2, v4}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_ea} :catch_eb
    .catchall {:try_start_26 .. :try_end_ea} :catchall_104

    .line 3223
    :cond_ea
    goto :goto_102

    .line 3221
    :catch_eb
    move-exception p1

    .line 3222
    :try_start_ec
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error autofilling activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :goto_102
    monitor-exit v0

    .line 3225
    return-void

    .line 3224
    :catchall_104
    move-exception p1

    monitor-exit v0
    :try_end_106
    .catchall {:try_start_ec .. :try_end_106} :catchall_104

    throw p1
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
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2105
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

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

    .line 3331
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 3332
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3335
    :cond_a
    return-void
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3247
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 3248
    const/4 v0, 0x0

    return-object v0

    .line 3250
    :cond_6
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 3251
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3252
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3253
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 3256
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3257
    const-string v1, "destroyLocked(): logging "

    const-string v3, "AutofillSession"

    const/4 v4, 0x0

    if-lez v0, :cond_53

    .line 3258
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_40
    move v5, v4

    :goto_41
    if-ge v5, v0, :cond_53

    .line 3260
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 3261
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3259
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 3265
    :cond_53
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_59

    move v5, v4

    goto :goto_5d

    .line 3266
    :cond_59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3267
    :goto_5d
    if-lez v5, :cond_8d

    .line 3268
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_7a

    .line 3269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " augmented requests"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    :cond_7a
    nop

    :goto_7b
    if-ge v4, v5, :cond_8d

    .line 3272
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/metrics/LogMaker;

    .line 3273
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3271
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 3277
    :cond_8d
    const/16 v1, 0x397

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v3, 0x5af

    .line 3278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 3279
    if-lez v5, :cond_a8

    .line 3280
    const/16 v1, 0x65f

    .line 3281
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3280
    invoke-virtual {v0, v1, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3283
    :cond_a8
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_b5

    .line 3284
    const/16 v1, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3286
    :cond_b5
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3288
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6

    .line 1075
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 1077
    const-string p2, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    monitor-exit v0

    return-void

    .line 1081
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_64

    if-eqz v1, :cond_3d

    .line 1083
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_64

    .line 1086
    :goto_33
    goto :goto_62

    .line 1084
    :catch_34
    move-exception p1

    .line 1085
    :try_start_35
    const-string p2, "AutofillSession"

    const-string v1, "Error requesting to dispatch unhandled key"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1088
    :cond_3d
    const-string p2, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not dispatch unhandled key on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it is not the current view ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") anymore"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_62
    monitor-exit v0

    .line 1092
    return-void

    .line 1091
    :catchall_64
    move-exception p1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_35 .. :try_end_66} :catchall_64

    throw p1
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3029
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3030
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3031
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3035
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3036
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_84

    .line 3037
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    .line 3039
    :cond_84
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3040
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3042
    :goto_8d
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3043
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3044
    const/4 v2, 0x0

    move v3, v2

    :goto_a0
    const/16 v5, 0x23

    if-ge v3, v1, :cond_d1

    .line 3045
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3046
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    .line 3047
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": req="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ", log="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v7}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3044
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 3050
    :cond_d1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mResponses: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3051
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v3, "null"

    if-nez v1, :cond_e4

    .line 3052
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10e

    .line 3054
    :cond_e4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3055
    move v1, v2

    :goto_ec
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_10e

    .line 3056
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3057
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3055
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 3060
    :cond_10e
    :goto_10e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCurrentViewId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3061
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDestroyed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3062
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIsSaving: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3063
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPendingSaveUi: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3064
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3065
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mViewStates size: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3066
    move v5, v2

    :goto_15a
    if-ge v5, v1, :cond_175

    .line 3067
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3068
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3066
    add-int/lit8 v5, v5, 0x1

    goto :goto_15a

    .line 3071
    :cond_175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContexts: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3072
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_1aa

    .line 3073
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3074
    move v3, v2

    :goto_186
    if-ge v3, v1, :cond_1a9

    .line 3075
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillContext;

    .line 3077
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3078
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_1a6

    .line 3079
    const-string v6, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v5}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 3074
    :cond_1a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_186

    .line 3085
    :cond_1a9
    goto :goto_1ad

    .line 3086
    :cond_1aa
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    :goto_1ad
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3090
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_1d4

    .line 3091
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mClientState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3092
    const-string v0, " bytes"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    :cond_1d4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCompatMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3095
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUrlBar: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v0, :cond_1f1

    .line 3097
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21b

    .line 3099
    :cond_1f1
    const-string v0, "id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3100
    const-string v0, " domain="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    const-string v0, " text="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 3103
    :goto_21b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectedDatasetIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3106
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v0, :cond_241

    .line 3107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "For Augmented Autofill Only"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    :cond_241
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_24d

    .line 3110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    :cond_24d
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v0, :cond_263

    .line 3113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "number augmented requests: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3114
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3117
    :cond_263
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_274

    .line 3118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3121
    :cond_274
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz v0, :cond_27b

    .line 3122
    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3124
    :cond_27b
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;)V
    .registers 11

    .line 1003
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 1005
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#fill() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " destroyed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1010
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    return-void

    .line 1009
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 7

    .line 414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 416
    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 417
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 418
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 421
    :cond_1a
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_34

    .line 424
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result p1

    .line 425
    aget-object p1, v3, p1

    .line 426
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_32
    monitor-exit v0

    return-object v2

    .line 428
    :cond_34
    const-string v1, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_4a
    monitor-exit v0

    .line 433
    return-object v2

    .line 432
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 440
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3302
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_26

    .line 3303
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

    .line 3306
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-nez v0, :cond_2b

    return-void

    .line 3308
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 3309
    return-void
.end method

.method forceRemoveSelfLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 3298
    return-void
.end method

.method forceRemoveSelfLocked(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3313
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

    .line 3315
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 3316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3318
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3319
    if-nez v0, :cond_3c

    .line 3321
    :try_start_30
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 3324
    goto :goto_3c

    .line 3322
    :catch_36
    move-exception p1

    .line 3323
    const-string v0, "Error notifying client to finish session"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3326
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 3327
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

    .line 2540
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2541
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 2542
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSaveInfoFlagsLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1259
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    .line 1260
    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v0

    :goto_c
    return v0
.end method

.method isDestroyed()Z
    .registers 3

    .line 2534
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2535
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 2536
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3381
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
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
    .registers 6

    .line 551
    const-string v0, "AutofillSession"

    if-eqz p2, :cond_a

    .line 552
    const-string p1, "cancelCurrentRequest(): unexpected exception"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    return-void

    .line 557
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq p2, v1, :cond_51

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz p2, :cond_51

    .line 558
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 561
    add-int/lit8 p2, p2, -0x1

    :goto_1c
    if-ltz p2, :cond_51

    .line 562
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4e

    .line 563
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCurrentRequest(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_48
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    goto :goto_51

    .line 561
    :cond_4e
    add-int/lit8 p2, p2, -0x1

    goto :goto_1c

    .line 569
    :cond_51
    :goto_51
    return-void
.end method

.method public synthetic lambda$logFieldClassificationScore$2$Session(I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 25

    .line 1549
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const/4 v5, 0x0

    const-string v6, "AutofillSession"

    if-nez v4, :cond_1d

    .line 1550
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "setFieldClassificationScore(): no results"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_19
    invoke-direct {v1, v5, v5}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1552
    return-void

    .line 1554
    :cond_1d
    const-string/jumbo v7, "scores"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 1555
    if-nez v7, :cond_3d

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No field classification score on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1559
    :cond_3d
    nop

    .line 1562
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_40
    move/from16 v10, p1

    if-ge v8, v10, :cond_164

    .line 1563
    :try_start_44
    aget-object v9, p2, v8
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_44 .. :try_end_46} :catch_145

    .line 1567
    nop

    .line 1568
    move-object v12, v5

    const/4 v11, 0x0

    :goto_49
    :try_start_49
    array-length v13, v0

    if-ge v11, v13, :cond_e7

    .line 1569
    aget-object v13, p4, v11

    .line 1570
    iget-object v14, v7, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v14, v14, v8

    aget v14, v14, v11
    :try_end_54
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_54} :catch_143

    .line 1571
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    const-string v5, " and id "

    if-lez v15, :cond_c3

    .line 1572
    if-nez v12, :cond_63

    .line 1573
    :try_start_5d
    new-instance v12, Landroid/util/ArrayMap;

    array-length v15, v0

    invoke-direct {v12, v15}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1575
    :cond_63
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 1576
    if-eqz v15, :cond_95

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v14

    if-lez v16, :cond_95

    .line 1577
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_e2

    .line 1578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skipping score "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " because it\'s less than "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 1583
    :cond_95
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v15, :cond_bb

    .line 1584
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding score "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " at index "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_bb
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    :cond_c2
    goto :goto_e2

    :cond_c3
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_c2

    .line 1589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skipping score 0 at index "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_e2
    :goto_e2
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_49

    .line 1592
    :cond_e7
    if-nez v12, :cond_104

    .line 1593
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_102

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no score for autofillId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_102
    move v9, v11

    goto :goto_13b

    .line 1598
    :cond_104
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_10d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5d .. :try_end_10d} :catch_143

    .line 1599
    const/4 v5, 0x0

    :goto_10e
    :try_start_10e
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v5, v11, :cond_12f

    .line 1600
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1601
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 1602
    new-instance v14, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v14, v11, v13}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    add-int/lit8 v5, v5, 0x1

    goto :goto_10e

    .line 1604
    :cond_12f
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v9, Landroid/service/autofill/FieldClassification;

    invoke-direct {v9, v4}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10e .. :try_end_13a} :catch_140

    move v9, v5

    .line 1562
    :goto_13b
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_40

    .line 1607
    :catch_140
    move-exception v0

    move v11, v5

    goto :goto_147

    :catch_143
    move-exception v0

    goto :goto_147

    :catch_145
    move-exception v0

    move v11, v9

    .line 1608
    :goto_147
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v3, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    return-void

    .line 1610
    :cond_164
    nop

    .line 1612
    invoke-direct {v1, v2, v3}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

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
    .registers 16

    .line 2481
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 2483
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " destroyed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    monitor-exit v0

    return-void

    .line 2487
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_f3

    .line 2489
    nop

    .line 2490
    const/4 v0, 0x0

    if-eqz p3, :cond_3b

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2491
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v4, p3

    goto :goto_3c

    .line 2496
    :cond_3b
    move-object v4, v0

    :goto_3c
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2497
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2498
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2499
    monitor-exit p3
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_f0

    .line 2500
    if-eqz v7, :cond_e6

    if-nez v8, :cond_52

    goto/16 :goto_e6

    .line 2504
    :cond_52
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object p3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2505
    invoke-virtual {p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v10, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2504
    move-object v2, p2

    move-object v3, p1

    move-object v9, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 2508
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2509
    :try_start_6b
    iget-wide v0, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_e1

    .line 2511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 2512
    iget-wide v0, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v2, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v0, v2

    .line 2513
    sget-boolean p3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p3, :cond_9f

    .line 2514
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "1st UI for "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 2515
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " shown in "

    .line 2516
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    invoke-static {v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2518
    const-string v2, "AutofillSession"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :cond_9f
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app="

    .line 2521
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " svc="

    .line 2522
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " latency="

    .line 2523
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-static {v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2525
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    const/16 p3, 0x479

    .line 2528
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2527
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 2530
    :cond_e1
    monitor-exit p2

    .line 2531
    return-void

    .line 2530
    :catchall_e3
    move-exception p1

    monitor-exit p2
    :try_end_e5
    .catchall {:try_start_6b .. :try_end_e5} :catchall_e3

    throw p1

    .line 2501
    :cond_e6
    :goto_e6
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onFillReady(): no service label or icon"

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2502
    return-void

    .line 2499
    :catchall_f0
    move-exception p1

    :try_start_f1
    monitor-exit p3
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p1

    .line 2487
    :catchall_f3
    move-exception p1

    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p1
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .registers 4

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .registers 22

    .line 741
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 742
    :try_start_b
    iget-boolean v5, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v5, :cond_2e

    .line 743
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v4

    return-void

    .line 748
    :cond_2e
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/metrics/LogMaker;

    .line 749
    if-eqz v5, :cond_3e

    .line 750
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_55

    .line 752
    :cond_3e
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_55
    const/16 v6, 0x38d

    if-nez v2, :cond_68

    .line 755
    if-eqz v5, :cond_63

    .line 756
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 758
    :cond_63
    invoke-direct {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 759
    monitor-exit v4

    return-void

    .line 762
    :cond_68
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 763
    if-eqz v7, :cond_96

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_96

    .line 764
    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because field detection is disabled"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 766
    monitor-exit v4

    return-void

    .line 768
    :cond_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_b .. :try_end_97} :catchall_178

    .line 770
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 772
    nop

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 774
    const-wide/16 v8, 0x0

    cmp-long v1, v14, v8

    if-lez v1, :cond_12a

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v13

    .line 776
    and-int/lit8 v8, v13, 0x2

    if-eqz v8, :cond_c3

    .line 777
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v16, v10

    move-wide v10, v14

    move v4, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_d4

    .line 780
    :cond_c3
    move v4, v13

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v13, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide v10, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 784
    :goto_d4
    invoke-direct {v0, v3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_ff

    .line 785
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 786
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_fe

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service disabled autofill for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but session is kept for augmented autofill only"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_fe
    return-void

    .line 792
    :cond_ff
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_128

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Service disabled autofill for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    const-string v9, ": flags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    const-string v4, ", duration="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-static {v14, v15, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 798
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "AutofillSession"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_128
    const/4 v4, 0x4

    goto :goto_12b

    .line 774
    :cond_12a
    const/4 v4, 0x0

    .line 803
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_13c

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_142

    .line 804
    :cond_13c
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v8

    if-eqz v8, :cond_144

    :cond_142
    if-lez v1, :cond_147

    .line 807
    :cond_144
    invoke-direct {v0, v4, v9}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 810
    :cond_147
    if-eqz v5, :cond_16d

    .line 811
    nop

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_152

    const/4 v4, 0x0

    goto :goto_15a

    :cond_152
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_15a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 811
    invoke-virtual {v5, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 813
    if-eqz v7, :cond_16d

    .line 814
    const/16 v1, 0x4f7

    array-length v4, v7

    .line 816
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 814
    invoke-virtual {v5, v1, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 820
    :cond_16d
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_170
    invoke-direct {v0, v2, v9, v3}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 822
    monitor-exit v1

    .line 823
    return-void

    .line 822
    :catchall_175
    move-exception v0

    monitor-exit v1
    :try_end_177
    .catchall {:try_start_170 .. :try_end_177} :catchall_175

    throw v0

    .line 768
    :catchall_178
    move-exception v0

    :try_start_179
    monitor-exit v4
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .registers 4

    .line 834
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 835
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 4

    .line 3371
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 3372
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 908
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 911
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_2f

    .line 912
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    monitor-exit v1

    return-void

    .line 916
    :cond_2f
    if-eqz v0, :cond_5c

    .line 917
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v3

    .line 918
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5c

    .line 919
    nop

    .line 920
    const-string v0, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' because service\'s targetting API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 924
    :cond_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_a .. :try_end_5d} :catchall_8a

    .line 925
    const/16 v1, 0x396

    .line 926
    invoke-direct {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0xb

    .line 927
    invoke-virtual {p2, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 928
    if-eqz p1, :cond_78

    .line 929
    const/16 v1, 0x624

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 931
    :cond_78
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 933
    if-eqz v0, :cond_86

    .line 934
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 936
    :cond_86
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 937
    return-void

    .line 924
    :catchall_8a
    move-exception p1

    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 5

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
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    move-result-object p1

    .line 892
    if-nez p2, :cond_35

    const/16 v0, 0xa

    goto :goto_36

    :cond_35
    const/4 v0, 0x1

    :goto_36
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 893
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 894
    if-eqz p2, :cond_4f

    .line 895
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4c

    const-string p1, "AutofillSession"

    const-string v0, "Starting intent sender on save()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;)V

    .line 900
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 901
    return-void

    .line 890
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 3

    .line 996
    const-string p1, "AutofillSession"

    const-string/jumbo v0, "removing session because service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3352
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

    .line 3353
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_47

    .line 3354
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

    .line 3356
    return-void

    .line 3358
    :cond_47
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3359
    const-string/jumbo v0, "removeSelfLocked() ignored, waiting for pending save ui"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    return-void

    .line 3363
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 3364
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 3365
    if-eqz v0, :cond_64

    .line 3366
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 3368
    :cond_64
    return-void
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 5

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
    move-exception p1

    goto :goto_17

    .line 1102
    :catch_d
    move-exception p1

    .line 1103
    :try_start_e
    const-string v1, "AutofillSession"

    const-string v2, "Error requesting to hide fill UI"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    :goto_15
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    throw p1
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 14

    .line 1050
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_24

    .line 1052
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    monitor-exit v0

    return-void

    .line 1056
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_78

    if-eqz v1, :cond_4d

    .line 1058
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1059
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
    .catchall {:try_start_2c .. :try_end_43} :catchall_78

    goto :goto_4c

    .line 1061
    :catch_44
    move-exception p1

    .line 1062
    :try_start_45
    const-string p2, "AutofillSession"

    const-string p3, "Error requesting to show fill UI"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    :goto_4c
    goto :goto_76

    .line 1065
    :cond_4d
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_76

    .line 1066
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Do not show full UI on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it is not the current view ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") anymore"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_76
    :goto_76
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_78
    move-exception p1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_45 .. :try_end_7a} :catchall_78

    throw p1
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
    .registers 11
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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " destroyed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1141
    :cond_22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_44

    .line 1144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAuthenticationResultLocked("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no responses"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1146
    return-void

    .line 1148
    :cond_44
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 1149
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 1150
    if-eqz v2, :cond_135

    if-nez p1, :cond_56

    goto/16 :goto_135

    .line 1156
    :cond_56
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v3

    .line 1159
    const v4, 0xffff

    if-eq v3, v4, :cond_89

    .line 1160
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1161
    if-nez v5, :cond_89

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "no dataset with index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on fill response"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1164
    return-void

    .line 1168
    :cond_89
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1169
    const-string v6, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1170
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_be

    .line 1171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAuthenticationResultLocked(): result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", clientState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", authenticationId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_be
    instance-of v6, v5, Landroid/service/autofill/FillResponse;

    if-eqz v6, :cond_cd

    .line 1175
    const/16 p2, 0x390

    invoke-direct {p0, v0, p2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1176
    check-cast v5, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v2, v5, p1}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto :goto_134

    .line 1177
    :cond_cd
    instance-of v6, v5, Landroid/service/autofill/Dataset;

    const/4 v7, 0x0

    if-eqz v6, :cond_115

    .line 1178
    if-eq v3, v4, :cond_f3

    .line 1179
    const/16 p2, 0x466

    invoke-direct {p0, v0, p2}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1181
    if-eqz p1, :cond_e6

    .line 1182
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_e4

    const-string p2, "Updating client state from auth dataset"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_e4
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1185
    :cond_e6
    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1186
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-virtual {p0, v0, v3, v5, v7}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;Z)V

    .line 1188
    goto :goto_134

    .line 1189
    :cond_f3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for authentication id "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 p1, 0x467

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_134

    .line 1195
    :cond_115
    if-eqz v5, :cond_12c

    .line 1196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "service returned invalid auth type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_12c
    const/16 p1, 0x468

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1200
    invoke-direct {p0, v0, v7}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1202
    :goto_134
    return-void

    .line 1151
    :cond_135
    :goto_135
    const-string/jumbo p1, "no authenticated response"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1153
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
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
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2642
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 2643
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 2644
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2645
    const-string v3, "AutofillSession"

    if-nez v2, :cond_2f

    .line 2646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutofillFailure(): no view for id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    goto :goto_60

    .line 2649
    :cond_2f
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2650
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    .line 2651
    or-int/lit16 v4, v4, 0x400

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2652
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_60

    .line 2653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_60
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2656
    :cond_63
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1206
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_22

    .line 1207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutofillSession"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void

    .line 1211
    :cond_22
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1212
    return-void
.end method

.method public showSaveLocked()Z
    .registers 18
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

    move-result-object v0

    .line 1633
    if-nez v0, :cond_30

    const/4 v5, 0x0

    goto :goto_35

    :cond_30
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v2

    move-object v5, v2

    .line 1645
    :goto_35
    const/4 v14, 0x1

    if-nez v5, :cond_5b

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
    return v14

    .line 1650
    :cond_5b
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_86

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
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1659
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1661
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1663
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 1664
    nop

    .line 1665
    nop

    .line 1668
    nop

    .line 1669
    if-eqz v6, :cond_1e7

    .line 1670
    move v7, v13

    move v8, v7

    move v9, v8

    :goto_a0
    array-length v10, v6

    if-ge v7, v10, :cond_1e5

    .line 1671
    aget-object v10, v6, v7

    .line 1672
    if-nez v10, :cond_c4

    .line 1673
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "null autofill id on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AutofillSession"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    goto/16 :goto_1c3

    .line 1676
    :cond_c4
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1677
    iget-object v11, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/autofill/ViewState;

    .line 1678
    if-nez v11, :cond_eb

    .line 1679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillSession"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    nop

    .line 1681
    goto/16 :goto_1ea

    .line 1684
    :cond_eb
    invoke-virtual {v11}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 1685
    if-eqz v15, :cond_f7

    invoke-virtual {v15}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_125

    .line 1686
    :cond_f7
    invoke-direct {v12, v10}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 1687
    if-eqz v15, :cond_1c8

    .line 1688
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_124

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value of required field "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " didn\'t change; using initial value ("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") instead"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "AutofillSession"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_124
    nop

    .line 1702
    :cond_125
    invoke-direct {v12, v2, v10, v15}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1703
    if-nez v1, :cond_14f

    .line 1704
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_14b

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value of required field "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed sanitization"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "AutofillSession"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_14b
    nop

    .line 1708
    const/4 v13, 0x0

    goto/16 :goto_1ea

    .line 1710
    :cond_14f
    invoke-virtual {v11, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1711
    invoke-virtual {v3, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    invoke-virtual {v11}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 1714
    invoke-virtual {v1, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c3

    .line 1715
    nop

    .line 1716
    if-nez v11, :cond_194

    .line 1718
    invoke-direct {v12, v10}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1719
    if-eqz v13, :cond_192

    invoke-virtual {v13, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_192

    .line 1720
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_190

    .line 1721
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "id "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AutofillSession"

    invoke-static {v15, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_190
    const/4 v13, 0x0

    goto :goto_193

    .line 1726
    :cond_192
    move v13, v14

    :goto_193
    goto :goto_196

    .line 1727
    :cond_194
    move v9, v14

    move v13, v9

    .line 1729
    :goto_196
    if-eqz v13, :cond_1c3

    .line 1730
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_1c2

    .line 1731
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found a change on required "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " => "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "AutofillSession"

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_1c2
    move v8, v14

    .line 1670
    :cond_1c3
    :goto_1c3
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto/16 :goto_a0

    .line 1694
    :cond_1c8
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1e2

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty value for required "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "AutofillSession"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_1e2
    nop

    .line 1698
    const/4 v13, 0x0

    goto :goto_1ea

    .line 1670
    :cond_1e5
    move v13, v14

    goto :goto_1ea

    .line 1669
    :cond_1e7
    move v13, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1740
    :goto_1ea
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    .line 1741
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_215

    .line 1742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allRequiredAreNotEmpty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasOptional: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_208

    move v7, v14

    goto :goto_209

    :cond_208
    const/4 v7, 0x0

    :goto_209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillSession"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_215
    if-eqz v13, :cond_4d9

    .line 1751
    if-eqz v1, :cond_2ea

    if-eqz v8, :cond_21d

    if-nez v9, :cond_2ea

    .line 1753
    :cond_21d
    const/4 v6, 0x0

    :goto_21e
    array-length v7, v1

    if-ge v6, v7, :cond_2e8

    .line 1754
    aget-object v7, v1, v6

    .line 1755
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v10, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/ViewState;

    .line 1757
    if-nez v10, :cond_249

    .line 1758
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no ViewState for optional "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AutofillSession"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    goto/16 :goto_2e4

    .line 1761
    :cond_249
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_2b8

    .line 1762
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 1763
    invoke-direct {v12, v2, v7, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v11

    .line 1764
    if-nez v11, :cond_27c

    .line 1765
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_2e4

    .line 1766
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "value of opt. field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " failed sanitization"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AutofillSession"

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e4

    .line 1771
    :cond_27c
    invoke-virtual {v3, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 1773
    invoke-virtual {v11, v10}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2b7

    .line 1774
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_2b3

    .line 1775
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found a change on optional "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " => "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AutofillSession"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_2b3
    if-eqz v10, :cond_2b6

    .line 1779
    move v9, v14

    .line 1781
    :cond_2b6
    move v8, v14

    .line 1783
    :cond_2b7
    goto :goto_2e4

    .line 1785
    :cond_2b8
    invoke-direct {v12, v7}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 1786
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_2df

    .line 1787
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no current value for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "; initial value is "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "AutofillSession"

    invoke-static {v15, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_2df
    if-eqz v10, :cond_2e4

    .line 1791
    invoke-virtual {v3, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    :cond_2e4
    :goto_2e4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_21e

    :cond_2e8
    move v10, v9

    goto :goto_2eb

    .line 1796
    :cond_2ea
    move v10, v9

    :goto_2eb
    if-eqz v8, :cond_4d9

    .line 1797
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2f8

    .line 1798
    const-string v1, "AutofillSession"

    const-string v2, "at least one field changed, validate fields for save UI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_2f8
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v1

    .line 1801
    if-eqz v1, :cond_352

    .line 1802
    const/16 v2, 0x46d

    invoke-direct {v12, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1805
    :try_start_304
    invoke-virtual {v1, v12}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v6

    .line 1806
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_325

    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_325
    if-eqz v6, :cond_32a

    .line 1808
    const/16 v1, 0xa

    goto :goto_32b

    .line 1809
    :cond_32a
    const/4 v1, 0x5

    .line 1807
    :goto_32b
    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_32e} :catch_33f

    .line 1815
    nop

    .line 1817
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1818
    if-nez v6, :cond_352

    .line 1819
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "not showing save UI because fields failed validation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return v14

    .line 1810
    :catch_33f
    move-exception v0

    .line 1811
    const-string v1, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1812
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1813
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1814
    return v14

    .line 1826
    :cond_352
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 1827
    if-eqz v0, :cond_440

    .line 1828
    const/4 v1, 0x0

    :goto_359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_440

    .line 1829
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 1830
    nop

    .line 1831
    invoke-static {v2}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 1832
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_394

    .line 1833
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; savableIds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AutofillSession"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_394
    const/4 v7, 0x0

    :goto_395
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_41d

    .line 1837
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 1838
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    .line 1839
    if-nez v9, :cond_3c4

    .line 1840
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_419

    .line 1841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataset has value for field that is null: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AutofillSession"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_419

    .line 1845
    :cond_3c4
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 1846
    invoke-virtual {v9, v11}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3fe

    .line 1847
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_3fa

    .line 1848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found a dataset change on id "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AutofillSession"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_3fa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_359

    .line 1853
    :cond_3fe
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_419

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no dataset changes for id "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AutofillSession"

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_419
    :goto_419
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_395

    .line 1855
    :cond_41d
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_43f

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_43f
    return v14

    .line 1863
    :cond_440
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_461

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
    :cond_461
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;

    invoke-static {v1, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 1872
    new-instance v1, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v2, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v1, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1876
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1877
    :try_start_47e
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1878
    iget-object v3, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1879
    monitor-exit v1
    :try_end_48b
    .catchall {:try_start_47e .. :try_end_48b} :catchall_4d6

    .line 1880
    if-eqz v2, :cond_4cb

    if-nez v3, :cond_491

    const/4 v1, 0x0

    goto :goto_4cc

    .line 1884
    :cond_491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1885
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v9, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v11, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1884
    move-object/from16 v6, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZ)V

    .line 1887
    if-eqz v0, :cond_4c7

    .line 1889
    :try_start_4aa
    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v0, v1, v14}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_4af
    .catch Landroid/os/RemoteException; {:try_start_4aa .. :try_end_4af} :catch_4b0

    .line 1892
    goto :goto_4c7

    .line 1890
    :catch_4b0
    move-exception v0

    .line 1891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_4c7
    :goto_4c7
    iput-boolean v14, v12, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1895
    const/4 v1, 0x0

    return v1

    .line 1880
    :cond_4cb
    const/4 v1, 0x0

    .line 1881
    :goto_4cc
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "showSaveLocked(): no service label or icon"

    const/4 v2, 0x0

    invoke-direct {v12, v2, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1882
    return v14

    .line 1879
    :catchall_4d6
    move-exception v0

    :try_start_4d7
    monitor-exit v1
    :try_end_4d8
    .catchall {:try_start_4d7 .. :try_end_4d8} :catchall_4d6

    throw v0

    .line 1899
    :cond_4d9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_506

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

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_506
    return v14
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 5

    .line 1111
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1112
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 1113
    const-string p1, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void

    .line 1118
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_26

    .line 688
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3022
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
    .registers 14
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
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_79

    const-string p1, "Ignoring specific action when viewState=null"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_79
    return-void

    .line 2283
    :cond_7a
    :goto_7a
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_92

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating viewState for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_92
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    .line 2285
    new-instance v6, Lcom/android/server/autofill/ViewState;

    .line 2286
    if-eqz v0, :cond_9d

    const/16 v7, 0x80

    goto :goto_9e

    :cond_9d
    move v7, v5

    :goto_9e
    invoke-direct {v6, p1, p0, v7}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 2287
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    if-eqz v0, :cond_c2

    .line 2293
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_c1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLocked(): ignoring view "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_c1
    return-void

    .line 2296
    :cond_c2
    move-object v0, v6

    .line 2302
    :cond_c3
    if-eq p4, v5, :cond_320

    if-eq p4, v3, :cond_281

    const/4 p2, 0x3

    const/4 v3, 0x0

    if-eq p4, p2, :cond_253

    if-eq p4, v4, :cond_e4

    .line 2453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateLocked(): unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32d

    .line 2310
    :cond_e4
    iget-boolean p2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz p2, :cond_154

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p2

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_154

    .line 2312
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez p1, :cond_f6

    move-object p1, v3

    goto :goto_102

    .line 2313
    :cond_f6
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2314
    :goto_102
    const/4 p2, 0x0

    if-nez p1, :cond_10d

    .line 2316
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "URL bar value changed, but current value is null"

    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    return-void

    .line 2319
    :cond_10d
    if-eqz p3, :cond_14a

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p4

    if-nez p4, :cond_116

    goto :goto_14a

    .line 2324
    :cond_116
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2325
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12e

    .line 2326
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_12d

    const-string p1, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_12d
    return-void

    .line 2329
    :cond_12e
    iget-boolean p1, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz p1, :cond_13c

    .line 2333
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_13b

    .line 2334
    const-string p1, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_13b
    return-void

    .line 2339
    :cond_13c
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_145

    const-string p1, "Finishing session because URL bar changed"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_145
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2341
    return-void

    .line 2321
    :cond_14a
    :goto_14a
    new-array p1, v5, [Ljava/lang/Object;

    aput-object p3, p1, p2

    const-string p2, "URL bar value changed to null or non-text: %s"

    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2322
    return-void

    .line 2344
    :cond_154
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32d

    .line 2345
    if-eqz p3, :cond_166

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1ca

    .line 2346
    :cond_166
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    if-eqz p2, :cond_1ca

    .line 2347
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p2

    if-eqz p2, :cond_1ca

    .line 2348
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1ca

    .line 2349
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object p2

    if-eqz p2, :cond_1ca

    .line 2350
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 2351
    sget-boolean p4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p4, :cond_1b5

    .line 2352
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): resetting value that was "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars long"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_1b5
    const/16 p4, 0x464

    invoke-direct {p0, p4}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object p4

    const/16 v2, 0x465

    .line 2356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 2357
    iget-object p4, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p4, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2361
    :cond_1ca
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2365
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object p2

    .line 2366
    const/16 p4, 0x8

    if-eqz p2, :cond_230

    .line 2367
    invoke-virtual {p2, p3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f7

    .line 2368
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_1f3

    .line 2369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ignoring autofilled change on id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_1f3
    invoke-virtual {v0, p4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2372
    return-void

    .line 2375
    :cond_1f7
    iget-object p2, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_230

    .line 2376
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p2

    and-int/2addr p2, v4

    if-eqz p2, :cond_230

    .line 2378
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_220

    .line 2379
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field changed after autofill on id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_220
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2382
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/ViewState;

    .line 2383
    invoke-virtual {p1, p5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2389
    :cond_230
    invoke-virtual {v0, p4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2393
    if-eqz p3, :cond_249

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result p1

    if-nez p1, :cond_23c

    goto :goto_249

    .line 2396
    :cond_23c
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    .line 2399
    if-nez p1, :cond_243

    goto :goto_24a

    :cond_243
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_24a

    .line 2394
    :cond_249
    :goto_249
    nop

    .line 2401
    :goto_24a
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, v3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2402
    goto/16 :goto_32d

    .line 2445
    :cond_253
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32d

    .line 2446
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_275

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exiting view "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :cond_275
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2448
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2449
    iput-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    goto/16 :goto_32d

    .line 2405
    :cond_281
    sget-boolean p4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p4, :cond_2a3

    if-eqz p2, :cond_2a3

    .line 2406
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entered on virtual child "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_2a3
    iget-object p4, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object p4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2411
    if-eqz p3, :cond_2ac

    .line 2412
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2415
    :cond_2ac
    iget-boolean p4, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz p4, :cond_2d6

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result p4

    and-int/lit16 p4, p4, 0x200

    if-eqz p4, :cond_2d6

    .line 2416
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_2d5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_2d5
    return-void

    .line 2420
    :cond_2d6
    and-int/lit8 p4, p5, 0x1

    if-nez p4, :cond_303

    iget-object p4, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz p4, :cond_303

    .line 2421
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_303

    .line 2425
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_2ff

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): augmented-autofillable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_2ff
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 2429
    return-void

    .line 2432
    :cond_303
    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V

    .line 2435
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p4, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {p1, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31c

    .line 2436
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2437
    iget-object p1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2438
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2442
    :cond_31c
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2443
    goto :goto_32d

    .line 2305
    :cond_320
    iget-object p1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2306
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2307
    const/16 p1, 0x10

    invoke-direct {p0, v0, p1, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2308
    nop

    .line 2455
    :cond_32d
    :goto_32d
    return-void
.end method
