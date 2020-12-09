.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"


# instance fields
.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field mBroadcastsScheduled:Z

.field final mConstants:Lcom/android/server/am/BroadcastConstants;

.field final mDelayBehindServices:Z

.field final mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field mLogLatencyMetrics:Z

.field private mNextToken:I

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSplitRefcounts:Landroid/util/SparseIntArray;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    const/16 v0, 0x32

    :goto_b
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x19

    goto :goto_18

    :cond_16
    const/16 v0, 0x12c

    :goto_18
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V
    .registers 9

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 126
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    new-array v1, v1, [Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 127
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 133
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v2, v1, [Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 134
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 141
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 142
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 143
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 148
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 217
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 218
    new-instance p1, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 219
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 220
    iput-boolean p5, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 222
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 223
    new-instance p1, Lcom/android/server/am/BroadcastDispatcher;

    iget-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/server/am/BroadcastDispatcher;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 224
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 8

    .line 1818
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_5

    .line 1820
    return-void

    .line 1822
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 1824
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 1825
    nop

    .line 1826
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 1827
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1825
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1832
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    .line 1834
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 1835
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 1837
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v2, v0, v1

    .line 1838
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v4, v0, v1

    .line 1839
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v4, v0, v1

    .line 1840
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 1841
    iget p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 1842
    return-void
.end method

.method private createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .registers 6

    .line 1888
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1889
    if-nez p2, :cond_8

    const-string p2, "in queue"

    goto :goto_a

    :cond_8
    const-string p2, "dispatched"

    :goto_a
    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 1890
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_16

    move-object v1, v2

    goto :goto_18

    :cond_16
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_18
    aput-object v1, v0, p2

    const/4 p2, 0x2

    .line 1891
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_23

    const-string/jumbo v1, "process unknown"

    goto :goto_29

    :cond_23
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_29
    aput-object v1, v0, p2

    const/4 p2, 0x3

    .line 1892
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v1, :cond_31

    goto :goto_37

    :cond_31
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_37
    aput-object v2, v0, p2

    .line 1888
    const-string p1, "Broadcast %s from %s (%s) %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .registers 26

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 620
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v4, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v5, v12, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    const-string v2, ") to "

    const-string v4, " from "

    const-string v5, ", uid="

    const-string v6, " (pid="

    const-string v13, "BroadcastQueue"

    const/4 v7, 0x1

    if-nez v1, :cond_65

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Association not allowed: broadcasting "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 623
    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " through "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move v1, v7

    goto :goto_66

    .line 620
    :cond_65
    const/4 v1, 0x0

    .line 629
    :goto_66
    if-nez v1, :cond_c9

    iget-object v8, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v15, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v9, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v10, v11, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_c9

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firewall blocked: broadcasting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 632
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move v1, v7

    .line 638
    :cond_c9
    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    const-string v3, ") requires appop "

    const/4 v8, -0x1

    if-eqz v2, :cond_181

    .line 639
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    iget v9, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v2, v9, v10, v8, v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v2

    .line 641
    if-eqz v2, :cond_124

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 643
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to registered receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move v1, v7

    goto :goto_181

    .line 650
    :cond_124
    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 651
    if-eq v2, v8, :cond_181

    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v10, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 652
    invoke-virtual {v9, v2, v10, v14}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_181

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 655
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 658
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to registered receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move v1, v7

    .line 665
    :cond_181
    :goto_181
    const-string v2, " due to sender "

    const-string v4, ")"

    const-string v9, " (uid "

    const-string v10, " to "

    if-nez v1, :cond_287

    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_287

    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_287

    .line 666
    const/4 v14, 0x0

    :goto_195
    iget-object v15, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_284

    .line 667
    iget-object v15, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v15, v15, v14

    .line 668
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v17, v1

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v18, v14

    const/4 v14, 0x1

    invoke-static {v15, v7, v1, v8, v14}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 670
    if-eqz v1, :cond_20a

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: receiving "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 672
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") requires "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    nop

    .line 680
    const/4 v7, 0x1

    goto/16 :goto_28b

    .line 682
    :cond_20a
    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 683
    if-eq v1, v8, :cond_27c

    iget v7, v11, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v1, v7, :cond_27c

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v14, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v14, v14, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v8, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 684
    invoke-virtual {v7, v1, v14, v8}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_27c

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 688
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    nop

    .line 697
    const/4 v7, 0x1

    goto :goto_28b

    .line 666
    :cond_27c
    add-int/lit8 v14, v18, 0x1

    move/from16 v1, v17

    const/4 v7, 0x1

    const/4 v8, -0x1

    goto/16 :goto_195

    :cond_284
    move/from16 v17, v1

    goto :goto_289

    .line 665
    :cond_287
    move/from16 v17, v1

    .line 701
    :goto_289
    move/from16 v7, v17

    :goto_28b
    const/4 v14, 0x0

    if-nez v7, :cond_2ff

    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_29b

    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_298

    goto :goto_29b

    :cond_298
    move/from16 v17, v7

    goto :goto_301

    .line 702
    :cond_29b
    :goto_29b
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->pid:I

    iget-object v8, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v17, v7

    const/4 v7, 0x1

    const/4 v15, -0x1

    invoke-static {v14, v1, v8, v15, v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 704
    if-eqz v1, :cond_301

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: security check failed when receiving "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 706
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") due to sender "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/16 v17, 0x1

    goto :goto_301

    .line 701
    :cond_2ff
    move/from16 v17, v7

    .line 715
    :cond_301
    :goto_301
    if-nez v17, :cond_373

    iget v1, v11, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_373

    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v7, v11, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v8, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v15, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 716
    invoke-virtual {v1, v7, v8, v15}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_373

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: receiving "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 720
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 724
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v7, 0x1

    goto :goto_375

    .line 730
    :cond_373
    move/from16 v7, v17

    :goto_375
    if-nez v7, :cond_3bb

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_38f

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_38f

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 731
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-eqz v1, :cond_3bb

    .line 732
    :cond_38f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping deliver ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process gone or crashing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v7, 0x1

    .line 739
    :cond_3bb
    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 740
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3c9

    const/16 v20, 0x1

    goto :goto_3cb

    :cond_3c9
    const/16 v20, 0x0

    .line 742
    :goto_3cb
    if-nez v7, :cond_42b

    if-nez v20, :cond_42b

    iget-boolean v1, v12, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    if-eqz v1, :cond_42b

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v2, :cond_42b

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant App Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 745
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v7, 0x1

    .line 755
    :cond_42b
    if-nez v7, :cond_48b

    iget-boolean v1, v12, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    if-nez v1, :cond_48b

    iget-boolean v1, v11, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v1, :cond_48b

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v2, :cond_48b

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant App Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 758
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires receiver be visible to instant apps due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v7, 0x1

    .line 768
    :cond_48b
    const/4 v1, 0x2

    if-eqz v7, :cond_493

    .line 769
    iget-object v0, v11, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v1, v0, p4

    .line 770
    return-void

    .line 777
    :cond_493
    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-direct {v0, v11, v2, v3}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4a2

    .line 779
    iget-object v0, v11, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v1, v0, p4

    .line 780
    return-void

    .line 783
    :cond_4a2
    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v3, 0x1

    aput v3, v2, p4

    .line 788
    if-eqz p3, :cond_4db

    .line 789
    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v11, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 790
    iput-object v12, v11, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 791
    iget-object v2, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v11, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 792
    iput v1, v11, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 793
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4db

    .line 799
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v1, v11, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 800
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v3, "updateOomAdj_startReceiver"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 808
    :cond_4db
    :try_start_4db
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4ef

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v1, :cond_4ef

    .line 811
    if-eqz p3, :cond_52b

    .line 812
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_52b

    .line 815
    :cond_4ef
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v11, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 816
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 817
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v1, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v11, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v11, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v11, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v9, v11, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v10, v11, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 822
    iget-boolean v1, v11, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v1, :cond_52b

    iget-boolean v1, v11, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_52b

    .line 823
    iget-object v1, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 826
    :cond_52b
    :goto_52b
    if-eqz p3, :cond_530

    .line 827
    const/4 v0, 0x3

    iput v0, v11, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_530
    .catch Landroid/os/RemoteException; {:try_start_4db .. :try_end_530} :catch_531

    .line 844
    :cond_530
    goto :goto_56a

    .line 829
    :catch_531
    move-exception v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    iget-object v0, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_560

    .line 833
    iget-object v0, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 834
    if-eqz p3, :cond_560

    .line 835
    iget-object v0, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 839
    :cond_560
    if-eqz p3, :cond_56a

    .line 840
    iput-object v14, v11, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 841
    iput-object v14, v11, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 842
    iget-object v0, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v14, v0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 845
    :cond_56a
    :goto_56a
    return-void
.end method

.method private enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 257
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 258
    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 258
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 262
    :cond_1a
    return-void
.end method

.method static synthetic lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 2

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 453
    return-void
.end method

.method private maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    .line 1672
    if-eqz p2, :cond_2d

    if-eqz p1, :cond_2d

    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-nez v0, :cond_9

    goto :goto_2d

    .line 1675
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1678
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1680
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 1681
    return-void

    .line 1673
    :cond_2d
    :goto_2d
    return-void
.end method

.method private nextSplitTokenLocked()I
    .registers 3

    .line 435
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 436
    if-gtz v0, :cond_7

    .line 437
    move v0, v1

    .line 439
    :cond_7
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 440
    return v0
.end method

.method private postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 8

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-wide p1, p2, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, v3, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    add-long/2addr p1, v3

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 454
    return-void
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_85

    .line 304
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v3, :cond_12

    .line 305
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 306
    return-void

    .line 309
    :cond_12
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 310
    iput-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 311
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 312
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 313
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 314
    if-nez p3, :cond_39

    .line 315
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_meh"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 319
    :cond_39
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 321
    nop

    .line 326
    :try_start_41
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 328
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v8, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 329
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v14, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 331
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v16

    .line 328
    invoke-interface/range {v7 .. v16}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    :try_end_77
    .catchall {:try_start_41 .. :try_end_77} :catchall_7a

    .line 334
    nop

    .line 336
    nop

    .line 344
    return-void

    .line 336
    :catchall_7a
    move-exception v0

    .line 339
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 340
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 341
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    throw v0

    .line 302
    :cond_85
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 282
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-lez v0, :cond_25

    .line 284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 285
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v2, v3, :cond_22

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 290
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v1

    .line 283
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 294
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
    .registers 23

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_16

    .line 852
    return v5

    .line 855
    :cond_16
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v4, :cond_25

    .line 856
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_23

    move v4, v5

    goto :goto_26

    :cond_23
    move v4, v6

    goto :goto_26

    .line 857
    :cond_25
    move v4, v5

    .line 860
    :goto_26
    if-eqz v4, :cond_86

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 861
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v15, v5, [Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v4, v15, v6

    new-array v4, v5, [Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 866
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 865
    invoke-virtual {v1, v5}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const/high16 v17, 0x54000000

    const/16 v18, 0x0

    .line 861
    move-object/from16 v16, v4

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v1

    .line 870
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    const/high16 v5, 0x18800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 882
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/BroadcastQueue$1;

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 888
    goto :goto_aa

    .line 889
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Receiving a broadcast in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_aa
    return v6
.end method

.method private final ringAdvance(III)I
    .registers 4

    .line 1811
    add-int/2addr p1, p2

    .line 1812
    if-gez p1, :cond_6

    add-int/lit8 p3, p3, -0x1

    return p3

    .line 1813
    :cond_6
    if-lt p1, p3, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1814
    :cond_a
    return p1
.end method

.method private skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 408
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 410
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 411
    return-void
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_21

    .line 572
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_21

    iget p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_21

    .line 573
    const-string p1, "BroadcastQueue"

    const-string v1, "Resuming delayed broadcast"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 575
    const/4 p1, 0x0

    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 579
    :cond_21
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .registers 13

    .line 1699
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1700
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1703
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_163

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_163

    .line 1707
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1708
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 1709
    if-eqz p1, :cond_3e

    .line 1710
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez p1, :cond_2a

    .line 1713
    return-void

    .line 1717
    :cond_2a
    iget-boolean p1, v5, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz p1, :cond_2f

    .line 1722
    return-void

    .line 1725
    :cond_2f
    iget-wide v3, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, p1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v3, v6

    .line 1726
    cmp-long p1, v3, v1

    if-lez p1, :cond_3e

    .line 1735
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1736
    return-void

    .line 1740
    :cond_3e
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_6f

    .line 1745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waited long enough for: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_59

    .line 1746
    iget-object v1, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_59
    const-string v1, "(null)"

    :goto_5b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1745
    const-string v1, "BroadcastQueue"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iput-object v4, v5, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1748
    iput v0, v5, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1749
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 1750
    return-void

    .line 1756
    :cond_6f
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    if-eqz p1, :cond_7d

    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p1

    if-eqz p1, :cond_7d

    move v0, v3

    .line 1758
    :cond_7d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout of broadcast "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - receiver="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", started "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v6, v1, v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms ago"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "BroadcastQueue"

    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iput-wide v1, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1761
    if-nez v0, :cond_b8

    .line 1762
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/2addr p1, v3

    iput p1, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1765
    :cond_b8
    nop

    .line 1766
    nop

    .line 1769
    iget p1, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez p1, :cond_d0

    .line 1770
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v1, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1771
    iget-object v1, v5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget v2, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    goto :goto_d2

    .line 1773
    :cond_d0
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1775
    :goto_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver during timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1777
    if-eqz p1, :cond_121

    instance-of v1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v1, :cond_121

    .line 1778
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .line 1779
    iget-object v1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v1, :cond_11f

    iget-object v1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_11f

    .line 1781
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1782
    :try_start_10e
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object p1, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p1, p1, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1784
    monitor-exit v1

    goto :goto_120

    :catchall_11c
    move-exception p1

    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_10e .. :try_end_11e} :catchall_11c

    throw p1

    .line 1786
    :cond_11f
    move-object p1, v4

    :goto_120
    goto :goto_123

    .line 1787
    :cond_121
    iget-object p1, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1790
    :goto_123
    if-eqz p1, :cond_13d

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13e

    .line 1790
    :cond_13d
    move-object v1, v4

    .line 1794
    :goto_13e
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v2, v5, :cond_144

    .line 1795
    iput-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1799
    :cond_144
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1803
    if-nez v0, :cond_162

    if-eqz v1, :cond_162

    .line 1806
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 1808
    :cond_162
    return-void

    .line 1704
    :cond_163
    :goto_163
    return-void
.end method

.method final cancelBroadcastTimeoutLocked()V
    .registers 3

    .line 1692
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_e

    .line 1693
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1696
    :cond_e
    return-void
.end method

.method cancelDeferrals()V
    .registers 3

    .line 1903
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1904
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->cancelDeferralsLocked()V

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1906
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1907
    return-void

    .line 1906
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1846
    nop

    .line 1847
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_21

    .line 1848
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1850
    if-nez p4, :cond_1e

    if-eqz v2, :cond_1e

    .line 1851
    return v1

    .line 1847
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1855
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p1

    or-int/2addr p1, v2

    .line 1858
    return p1
.end method

.method describeState()Ljava/lang/String;
    .registers 4

    .line 1910
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parallel; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 1912
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    .line 1911
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1913
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 28

    .line 1964
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1965
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, ":"

    const-string v6, " #"

    const-string v7, "]:"

    const-string v8, "    "

    const/4 v10, 0x1

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_2c

    goto :goto_30

    :cond_2c
    move/from16 v11, p7

    goto/16 :goto_d8

    .line 1967
    :cond_30
    :goto_30
    nop

    .line 1968
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v10

    move/from16 v11, p7

    const/4 v12, 0x0

    :goto_3b
    if-ltz v4, :cond_99

    .line 1969
    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    .line 1970
    if-eqz v2, :cond_50

    iget-object v14, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_50

    .line 1971
    goto :goto_96

    .line 1973
    :cond_50
    if-nez v12, :cond_74

    .line 1974
    if-eqz v11, :cond_57

    .line 1975
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1977
    :cond_57
    nop

    .line 1978
    nop

    .line 1979
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Active broadcasts ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v11, v10

    move v12, v11

    .line 1981
    :cond_74
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Active Broadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v13, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 1968
    :goto_96
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b

    .line 1985
    :cond_99
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2, v12, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    .line 1987
    if-eqz v2, :cond_ae

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_d8

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1988
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 1989
    :cond_ae
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Pending broadcast ["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_d2

    .line 1992
    invoke-virtual {v4, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_d7

    .line 1994
    :cond_d2
    const-string v4, "    (null)"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    :goto_d7
    move v11, v10

    .line 2000
    :cond_d8
    :goto_d8
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v4, v1}, Lcom/android/server/am/BroadcastConstants;->dump(Ljava/io/PrintWriter;)V

    .line 2003
    nop

    .line 2005
    nop

    .line 2006
    iget v4, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2007
    const/4 v12, -0x1

    move v14, v11

    move v13, v12

    const/4 v15, 0x0

    move v11, v4

    .line 2011
    :goto_e6
    sget v9, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-direct {v0, v11, v12, v9}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v11

    .line 2012
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v9, v11

    .line 2013
    const-string v12, "    extras: "

    const-string v10, ": "

    move/from16 p7, v4

    const-string v4, "  #"

    if-nez v9, :cond_100

    .line 2014
    move-object/from16 v18, v5

    move/from16 v16, v11

    goto/16 :goto_1ae

    .line 2017
    :cond_100
    add-int/lit8 v13, v13, 0x1

    .line 2018
    if-eqz v2, :cond_112

    move/from16 v16, v11

    iget-object v11, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_114

    .line 2019
    move-object/from16 v18, v5

    goto/16 :goto_1ae

    .line 2018
    :cond_112
    move/from16 v16, v11

    .line 2021
    :cond_114
    if-nez v15, :cond_137

    .line 2022
    if-eqz v14, :cond_11b

    .line 2023
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2025
    :cond_11b
    nop

    .line 2026
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Historical broadcasts ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 2029
    :cond_137
    if-eqz p5, :cond_160

    .line 2030
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v14

    const-string v14, "  Historical Broadcast "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v9, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    move-object/from16 v18, v5

    goto :goto_1ac

    .line 2034
    :cond_160
    move/from16 v17, v14

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2035
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    iget-object v11, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v5

    const/4 v5, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v5, v5, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v5, :cond_19a

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v11, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eq v5, v11, :cond_19a

    .line 2038
    const-string v5, "    targetComp: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    :cond_19a
    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 2041
    if-eqz v5, :cond_1ac

    .line 2042
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    :cond_1ac
    :goto_1ac
    move/from16 v14, v17

    :goto_1ae
    move/from16 v5, p7

    move/from16 v9, v16

    if-ne v9, v5, :cond_2b2

    .line 2047
    if-nez v2, :cond_2b1

    .line 2048
    iget v2, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 2049
    if-eqz p5, :cond_1bf

    .line 2050
    nop

    .line 2051
    move v6, v2

    const/4 v13, -0x1

    const/4 v15, 0x0

    goto :goto_1d6

    .line 2054
    :cond_1bf
    move v6, v2

    move v5, v13

    .line 2055
    :goto_1c1
    if-lez v5, :cond_1d6

    if-eq v6, v2, :cond_1d6

    .line 2056
    sget v9, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v11, -0x1

    invoke-direct {v0, v6, v11, v9}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v6

    .line 2057
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v9, v6

    .line 2058
    if-nez v9, :cond_1d3

    .line 2059
    goto :goto_1c1

    .line 2061
    :cond_1d3
    add-int/lit8 v5, v5, -0x1

    .line 2062
    goto :goto_1c1

    .line 2067
    :cond_1d6
    :goto_1d6
    sget v5, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v11, -0x1

    invoke-direct {v0, v6, v11, v5}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v6

    .line 2068
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v5, v5, v6

    .line 2069
    if-nez v5, :cond_1ea

    .line 2070
    move-object/from16 p1, v4

    move-object/from16 p4, v10

    const/4 v11, 0x1

    goto/16 :goto_2a8

    .line 2072
    :cond_1ea
    if-nez v15, :cond_20d

    .line 2073
    if-eqz v14, :cond_1f1

    .line 2074
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2076
    :cond_1f1
    nop

    .line 2077
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Historical broadcasts summary ["

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 2080
    :cond_20d
    if-nez p5, :cond_21a

    const/16 v9, 0x32

    if-lt v13, v9, :cond_21a

    .line 2081
    const-string v0, "  ..."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    goto/16 :goto_2b1

    .line 2084
    :cond_21a
    add-int/lit8 v13, v13, 0x1

    .line 2085
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2086
    move-object/from16 p1, v4

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v9, v11, v11, v9}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v16, v4, v6

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v18, v4, v6

    move-object/from16 p4, v10

    sub-long v9, v16, v18

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2090
    const-string v9, " dispatch "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v9, v9, v6

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v16, v4, v6

    sub-long v9, v9, v16

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2093
    const-string v4, " finish"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    const-string v4, "    enq="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    new-instance v4, Ljava/util/Date;

    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v9, v9, v6

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2096
    const-string v4, " disp="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2097
    new-instance v4, Ljava/util/Date;

    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v9, v9, v6

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    const-string v4, " fin="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2099
    new-instance v4, Ljava/util/Date;

    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v9, v9, v6

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2101
    if-eqz v4, :cond_2a8

    .line 2102
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    :cond_2a8
    :goto_2a8
    if-ne v6, v2, :cond_2ab

    goto :goto_2b1

    :cond_2ab
    move-object/from16 v4, p1

    move-object/from16 v10, p4

    goto/16 :goto_1d6

    .line 2107
    :cond_2b1
    :goto_2b1
    return v14

    .line 2045
    :cond_2b2
    const/4 v4, 0x0

    const/4 v11, 0x1

    move v4, v5

    move v10, v11

    move-object/from16 v5, v18

    const/4 v12, -0x1

    move v11, v9

    goto/16 :goto_e6
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 248
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 243
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .registers 22

    .line 458
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 459
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 461
    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long/2addr v5, v7

    .line 462
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 463
    const-string v8, "BroadcastQueue"

    if-nez v3, :cond_32

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishReceiver ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] called but state is IDLE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_32
    iget-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v9, :cond_4d

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_4d

    .line 467
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v9, v9, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_48

    .line 470
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9, v1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_4d

    .line 473
    :cond_48
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v9, v1}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 478
    :cond_4d
    :goto_4d
    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v10, 0x1

    if-lez v9, :cond_59

    .line 479
    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v11, v10

    aput-wide v5, v9, v11

    .line 484
    :cond_59
    iget-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v9, :cond_9b

    .line 485
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v9, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_9b

    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v9, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    cmp-long v5, v5, v11

    if-lez v5, :cond_9b

    .line 487
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 492
    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_87

    .line 493
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/BroadcastDispatcher;->startDeferring(I)V

    goto :goto_9b

    .line 495
    :cond_87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish receiver curApp is null? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_9b
    :goto_9b
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 512
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 513
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_b8

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 514
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 516
    :cond_b8
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v6, :cond_c2

    .line 517
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v6, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v5, v6, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 519
    :cond_c2
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 520
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 521
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 522
    iput-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 524
    move/from16 v6, p2

    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 525
    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 526
    move-object/from16 v6, p4

    iput-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 527
    if-eqz v2, :cond_e6

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v9, 0x8000000

    and-int/2addr v6, v9

    if-nez v6, :cond_e6

    .line 528
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto :goto_e8

    .line 530
    :cond_e6
    iput-boolean v7, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 535
    :goto_e8
    if-eqz p6, :cond_15c

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_15c

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v2, v2, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v2, :cond_15c

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 536
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    if-ne v2, v1, :cond_15c

    .line 538
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_119

    .line 539
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 540
    instance-of v6, v2, Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_117

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_118

    :cond_117
    move-object v2, v5

    .line 541
    :goto_118
    goto :goto_11a

    .line 542
    :cond_119
    move-object v2, v5

    .line 545
    :goto_11a
    if-eqz v4, :cond_132

    if-eqz v2, :cond_132

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v9, :cond_132

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 547
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15c

    .line 552
    :cond_132
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->hasBackgroundServicesLocked(I)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay finish: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 555
    return v7

    .line 560
    :cond_15c
    iput-object v5, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 565
    if-eq v3, v10, :cond_165

    const/4 v0, 0x3

    if-ne v3, v0, :cond_164

    goto :goto_165

    :cond_164
    move v10, v7

    :cond_165
    :goto_165
    return v10
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_d

    .line 428
    return-object v0

    .line 430
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method isIdle()Z
    .registers 2

    .line 1896
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method final isSignaturePerm([Ljava/lang/String;)Z
    .registers 8

    .line 924
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 925
    return v0

    .line 927
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 928
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_26

    .line 930
    :try_start_d
    aget-object v4, p1, v2

    const-string v5, "android"

    invoke-interface {v1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 931
    if-nez v4, :cond_18

    .line 934
    return v0

    .line 936
    :cond_18
    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_24

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_20

    .line 941
    return v0

    .line 945
    :cond_20
    nop

    .line 928
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 943
    :catch_24
    move-exception p1

    .line 944
    return v0

    .line 947
    :cond_26
    return v3
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 12

    .line 1862
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1863
    const/16 v2, 0x7549

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ltz v0, :cond_89

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_89

    .line 1864
    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1865
    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_53

    .line 1866
    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    .line 1867
    const/16 v2, 0x7548

    new-array v7, v7, [Ljava/lang/Object;

    iget v9, v8, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 1868
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1869
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    .line 1867
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1870
    goto :goto_88

    .line 1871
    :cond_53
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1872
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1873
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    .line 1874
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v3

    .line 1872
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1876
    :goto_88
    goto :goto_cb

    .line 1877
    :cond_89
    if-gez v0, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BroadcastQueue"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_a1
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v7, -0x1

    .line 1880
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1881
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1882
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "NONE"

    aput-object p1, v0, v3

    .line 1879
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1885
    :goto_cb
    return-void
.end method

.method performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    move-object v1, p1

    if-eqz v1, :cond_66

    .line 587
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_5e

    .line 591
    :try_start_7
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 592
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v11

    .line 591
    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v2 .. v11}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1f

    .line 606
    goto :goto_69

    .line 598
    :catch_1f
    move-exception v0

    .line 600
    move-object v2, p0

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 601
    const-string v3, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t deliver broadcast to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "). Crashing it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v3, "can\'t deliver broadcast"

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 604
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 605
    throw v0

    .line 604
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 609
    :cond_5e
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_66
    invoke-interface/range {p2 .. p9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 615
    :goto_69
    return-void
.end method

.method final processNextBroadcast(Z)V
    .registers 4

    .line 951
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 952
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    .line 953
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 954
    return-void

    .line 953
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method final processNextBroadcastLocked(ZZ)V
    .registers 32

    .line 964
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 966
    const/4 v12, 0x0

    if-eqz p1, :cond_c

    .line 967
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 971
    :cond_c
    :goto_c
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v13, 0x40

    const/4 v15, 0x1

    if-lez v0, :cond_64

    .line 972
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 976
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 977
    nop

    .line 978
    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 977
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 980
    nop

    .line 981
    invoke-direct {v11, v0, v15}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 980
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 985
    :cond_49
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 988
    move v2, v12

    :goto_50
    if-ge v2, v1, :cond_60

    .line 989
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 993
    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {v11, v0, v3, v12, v2}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 988
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 995
    :cond_60
    invoke-direct {v11, v0}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 998
    goto :goto_c

    .line 1005
    :cond_64
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_ec

    .line 1011
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_93

    .line 1012
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1013
    :try_start_74
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_8b

    goto :goto_8d

    :cond_8b
    move v0, v12

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v0, v15

    .line 1016
    :goto_8e
    monitor-exit v1

    goto :goto_b5

    :catchall_90
    move-exception v0

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_74 .. :try_end_92} :catchall_90

    throw v0

    .line 1018
    :cond_93
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1020
    if-eqz v0, :cond_b4

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v0, :cond_b2

    goto :goto_b4

    :cond_b2
    move v0, v12

    goto :goto_b5

    :cond_b4
    :goto_b4
    move v0, v15

    .line 1022
    :goto_b5
    if-nez v0, :cond_b8

    .line 1024
    return-void

    .line 1026
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending app  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died before responding to broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iput v12, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1030
    iget v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1031
    iput-object v10, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1035
    :cond_ec
    move v0, v12

    .line 1038
    :goto_ed
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1039
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/BroadcastDispatcher;->getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;

    move-result-object v9

    .line 1041
    if-nez v9, :cond_11c

    .line 1043
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v12}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    .line 1044
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1045
    if-eqz v0, :cond_10d

    .line 1049
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1053
    :cond_10d
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-boolean v0, v0, Lcom/android/server/am/UserController;->mBootCompleted:Z

    if-eqz v0, :cond_11b

    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_11b

    .line 1054
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 1057
    :cond_11b
    return-void

    .line 1060
    :cond_11c
    nop

    .line 1069
    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_128

    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_129

    :cond_128
    move v3, v12

    .line 1070
    :goto_129
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-wide/16 v16, 0x0

    if-eqz v4, :cond_1af

    iget-boolean v4, v9, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v4, :cond_1af

    iget-wide v4, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_1af

    .line 1071
    if-lez v3, :cond_1af

    iget-wide v4, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v6, 0x2

    iget-object v8, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v8, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    mul-long/2addr v13, v6

    int-to-long v6, v3

    mul-long/2addr v13, v6

    add-long/2addr v4, v13

    cmp-long v4, v1, v4

    if-lez v4, :cond_1af

    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hung broadcast ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] discarded after timeout failure: now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dispatchTime="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " startTime="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " numReceivers="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nextReceiver="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v11, v12}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 1083
    nop

    .line 1084
    iput v12, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    move v1, v15

    goto :goto_1b0

    .line 1088
    :cond_1af
    move v1, v12

    :goto_1b0
    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v2, :cond_1b5

    .line 1093
    return-void

    .line 1097
    :cond_1b5
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v13, 0x2

    const/high16 v14, 0x40000000  # 2.0f

    if-eqz v2, :cond_225

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v2, v3, :cond_225

    iget-boolean v2, v9, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v2, :cond_225

    if-eqz v1, :cond_1c7

    goto :goto_225

    .line 1172
    :cond_1c7
    iget-boolean v1, v9, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    if-nez v1, :cond_222

    .line 1173
    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    .line 1174
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferringLocked(I)Z

    move-result v2

    if-eqz v2, :cond_222

    .line 1183
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/2addr v0, v15

    if-ne v0, v3, :cond_1ec

    .line 1188
    nop

    .line 1189
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v9}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object v0, v9

    goto :goto_216

    .line 1196
    :cond_1ec
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v9, v1, v0}, Lcom/android/server/am/BroadcastRecord;->splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 1209
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_216

    .line 1210
    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1211
    if-nez v2, :cond_20a

    .line 1213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->nextSplitTokenLocked()I

    move-result v2

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1214
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_216

    .line 1222
    :cond_20a
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1229
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    add-int/2addr v3, v15

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    :cond_216
    :goto_216
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/BroadcastDispatcher;->addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V

    .line 1238
    nop

    .line 1239
    nop

    .line 1240
    move-object v9, v10

    move v0, v15

    move-object v15, v9

    goto/16 :goto_2df

    .line 1243
    :cond_222
    move-object v15, v10

    goto/16 :goto_2df

    .line 1100
    :cond_225
    :goto_225
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_29f

    .line 1101
    nop

    .line 1105
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-eqz v0, :cond_24b

    .line 1106
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sub-int/2addr v0, v15

    .line 1107
    if-nez v0, :cond_241

    .line 1114
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_24b

    .line 1124
    :cond_241
    nop

    .line 1125
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v2, v9, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v12

    goto :goto_24c

    .line 1128
    :cond_24b
    :goto_24b
    move v0, v15

    :goto_24c
    if-eqz v0, :cond_29c

    .line 1134
    :try_start_24e
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v9, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_263
    .catch Landroid/os/RemoteException; {:try_start_24e .. :try_end_263} :catch_274

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-object v13, v9

    move v9, v0

    move-object v15, v10

    move/from16 v10, v18

    :try_start_26c
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1139
    iput-object v15, v13, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_271
    .catch Landroid/os/RemoteException; {:try_start_26c .. :try_end_271} :catch_272

    .line 1145
    goto :goto_2a1

    .line 1140
    :catch_272
    move-exception v0

    goto :goto_277

    :catch_274
    move-exception v0

    move-object v13, v9

    move-object v15, v10

    .line 1141
    :goto_277
    iput-object v15, v13, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] sending broadcast result of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a1

    .line 1128
    :cond_29c
    move-object v13, v9

    move-object v15, v10

    goto :goto_2a1

    .line 1100
    :cond_29f
    move-object v13, v9

    move-object v15, v10

    .line 1150
    :goto_2a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1156
    invoke-direct {v11, v13}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1157
    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2d6

    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d6

    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1158
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v14

    if-nez v0, :cond_2d6

    .line 1160
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v4, v13, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v5, v13, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-wide v6, v13, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, v13, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1163
    :cond_2d6
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v13}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1164
    nop

    .line 1165
    nop

    .line 1166
    move-object v9, v15

    const/4 v0, 0x1

    .line 1243
    :goto_2df
    if-eqz v9, :cond_b70

    .line 1246
    iget v1, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1251
    if-nez v1, :cond_328

    .line 1252
    iget-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1255
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_307

    .line 1256
    const/16 v0, 0x8e

    iget-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v4, v9, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/util/StatsLog;->write(IJ)I

    .line 1261
    :cond_307
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_328

    .line 1262
    nop

    .line 1263
    invoke-direct {v11, v9, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1262
    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1265
    nop

    .line 1266
    const/4 v4, 0x1

    invoke-direct {v11, v9, v4}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1267
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1265
    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1272
    :cond_328
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_336

    .line 1273
    iget-wide v2, v9, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v2, v4

    .line 1277
    invoke-virtual {v11, v2, v3}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1280
    :cond_336
    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1281
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1283
    instance-of v3, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_377

    .line 1286
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1291
    iget-boolean v3, v9, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v11, v9, v0, v3, v1}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1292
    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v1, :cond_371

    iget-boolean v1, v9, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_352

    goto :goto_371

    .line 1301
    :cond_352
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v1, :cond_35d

    .line 1302
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v1, v9}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1306
    :cond_35d
    if-eqz v2, :cond_376

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v3

    cmp-long v1, v3, v16

    if-lez v1, :cond_376

    .line 1307
    iget v0, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 1308
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v1

    .line 1307
    invoke-virtual {v11, v0, v1, v2, v9}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    goto :goto_376

    .line 1298
    :cond_371
    :goto_371
    iput v12, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1311
    :cond_376
    :goto_376
    return-void

    .line 1317
    :cond_377
    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1319
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    nop

    .line 1324
    if-eqz v2, :cond_3a6

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1326
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    move-result v5

    if-lt v0, v5, :cond_3a4

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1328
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    move-result v5

    if-le v0, v5, :cond_3a6

    .line 1329
    :cond_3a4
    const/4 v0, 0x1

    goto :goto_3a7

    .line 1331
    :cond_3a6
    move v0, v12

    :goto_3a7
    if-nez v0, :cond_406

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v7, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1332
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1331
    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_406

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Association not allowed: broadcasting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1334
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v0, 0x1

    .line 1339
    :cond_406
    if-nez v0, :cond_474

    .line 1340
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v7, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v8, v9, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x1

    .line 1342
    xor-int/2addr v0, v5

    if-eqz v0, :cond_474

    .line 1343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firewall blocked: broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1344
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1343
    const-string v6, "BroadcastQueue"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_474
    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v7, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v10, v10, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v5, v6, v7, v8, v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v5

    .line 1352
    const/4 v6, -0x1

    if-nez v0, :cond_541

    if-eqz v5, :cond_541

    .line 1353
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v0, :cond_4ec

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: broadcasting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1355
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is not exported from uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " due to receiver "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53e

    .line 1361
    :cond_4ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: broadcasting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1362
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to receiver "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :goto_53e
    const/4 v5, 0x1

    goto/16 :goto_5ba

    .line 1369
    :cond_541
    if-nez v0, :cond_5b9

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_5b9

    .line 1370
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v5

    .line 1371
    if-eq v5, v6, :cond_5b9

    iget-object v7, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v8, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1372
    invoke-virtual {v7, v5, v8, v10}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5b9

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: broadcasting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1375
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires appop "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1378
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to registered receiver "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v5, 0x1

    goto :goto_5ba

    .line 1385
    :cond_5b9
    move v5, v0

    :goto_5ba
    const/16 v7, 0x3e8

    if-nez v5, :cond_6ae

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v7, :cond_6ae

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_6ae

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6ae

    .line 1387
    move v8, v12

    :goto_5d0
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_6ae

    .line 1388
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v10, v0, v8

    .line 1390
    :try_start_5d9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1394
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 1391
    invoke-interface {v0, v10, v13, v15}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_5f1
    .catch Landroid/os/RemoteException; {:try_start_5d9 .. :try_end_5f1} :catch_5f2

    .line 1397
    goto :goto_5f4

    .line 1395
    :catch_5f2
    move-exception v0

    .line 1396
    move v0, v6

    .line 1398
    :goto_5f4
    if-eqz v0, :cond_63e

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to sender "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    nop

    .line 1406
    const/4 v15, 0x1

    goto :goto_6af

    .line 1408
    :cond_63e
    invoke-static {v10}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 1409
    if-eq v0, v6, :cond_6a8

    iget v13, v9, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v13, :cond_6a8

    iget-object v13, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1410
    invoke-virtual {v13, v0, v15, v12}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6a8

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires appop "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-static {v10}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to sender "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    nop

    .line 1421
    const/4 v15, 0x1

    goto :goto_6af

    .line 1387
    :cond_6a8
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_5d0

    .line 1425
    :cond_6ae
    move v15, v5

    :goto_6af
    if-nez v15, :cond_717

    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v6, :cond_717

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1426
    invoke-virtual {v0, v5, v6, v8}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_717

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires appop "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 1432
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to sender "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v15, 0x1

    .line 1437
    :cond_717
    nop

    .line 1439
    :try_start_718
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v5, v6, v8, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v12
    :try_end_72e
    .catch Ljava/lang/SecurityException; {:try_start_718 .. :try_end_72e} :catch_72f

    .line 1445
    goto :goto_73b

    .line 1442
    :catch_72f
    move-exception v0

    .line 1443
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/4 v12, 0x0

    const/4 v15, 0x1

    .line 1446
    :goto_73b
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_775

    .line 1447
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v5, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_775

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: Receiver "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v15, 0x1

    .line 1457
    :cond_775
    if-nez v15, :cond_7c9

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_7c9

    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v5, :cond_7c9

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instant App Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to sender "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") Instant Apps do not support manifest receivers"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1459
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v15, 0x1

    .line 1467
    :cond_7c9
    if-nez v15, :cond_820

    iget-boolean v0, v9, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v0, :cond_820

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v0, v5

    if-nez v0, :cond_820

    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v5, :cond_820

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instant App Denial: receiving "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires receiver have visibleToInstantApps set due to sender "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1470
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v15, 0x1

    .line 1478
    :cond_820
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_85c

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_85c

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping deliver ordered ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": process crashing"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/4 v15, 0x1

    .line 1484
    :cond_85c
    if-nez v15, :cond_895

    .line 1485
    nop

    .line 1487
    :try_start_85f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1489
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1487
    invoke-interface {v0, v5, v6}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_875
    .catch Ljava/lang/Exception; {:try_start_85f .. :try_end_875} :catch_876

    .line 1494
    goto :goto_892

    .line 1490
    :catch_876
    move-exception v0

    .line 1492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getting recipient info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BroadcastQueue"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1495
    :goto_892
    if-nez v0, :cond_895

    .line 1500
    const/4 v15, 0x1

    .line 1508
    :cond_895
    if-nez v15, :cond_8ac

    .line 1509
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1510
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1509
    invoke-direct {v11, v9, v0, v5}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8ac

    .line 1512
    const/4 v15, 0x1

    .line 1518
    :cond_8ac
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1520
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v0, v7, :cond_8cd

    if-eqz v12, :cond_8cd

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v9, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1521
    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_8cd

    .line 1522
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1524
    :cond_8cd
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1525
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 1528
    if-nez v15, :cond_993

    .line 1529
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v23, -0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v0

    move/from16 v20, v8

    move-object/from16 v21, v10

    move/from16 v22, v12

    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 1532
    if-eqz v0, :cond_993

    .line 1537
    const/4 v8, 0x3

    if-ne v0, v8, :cond_931

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Background execution disabled: receiving "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    const-string v8, "BroadcastQueue"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v15, 0x1

    goto :goto_993

    .line 1542
    :cond_931
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v8, 0x800000

    and-int/2addr v0, v8

    if-nez v0, :cond_95f

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1543
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_993

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1544
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_993

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1545
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v8, 0x1000000

    and-int/2addr v0, v8

    if-nez v0, :cond_993

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 1547
    invoke-virtual {v11, v0}, Lcom/android/server/am/BroadcastQueue;->isSignaturePerm([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_993

    .line 1548
    :cond_95f
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1549
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1548
    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/ActivityManagerService;->addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Background execution not allowed: receiving "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1550
    const-string v8, "BroadcastQueue"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v15, 0x1

    .line 1558
    :cond_993
    :goto_993
    if-nez v15, :cond_9e7

    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e7

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1560
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_9e7

    .line 1562
    nop

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping delivery to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : user is not running"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BroadcastQueue"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    .line 1568
    :cond_9e7
    if-eqz v15, :cond_a00

    .line 1572
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 1573
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1574
    iput-object v1, v9, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1575
    const/4 v1, 0x0

    iput v1, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1576
    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, v9, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1578
    return-void

    .line 1580
    :cond_a00
    const/4 v8, 0x1

    iget v0, v9, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    add-int/2addr v0, v8

    iput v0, v9, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 1582
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v8, v0, v1

    .line 1583
    iput v8, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1584
    iput-object v4, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1585
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, v9, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1592
    if-eqz v2, :cond_a1f

    .line 1593
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v12

    cmp-long v0, v12, v16

    if-lez v0, :cond_a1f

    move/from16 v25, v8

    goto :goto_a21

    :cond_a1f
    const/16 v25, 0x0

    .line 1594
    :goto_a21
    if-eqz v25, :cond_a2b

    .line 1595
    nop

    .line 1596
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v12

    .line 1595
    invoke-virtual {v11, v5, v12, v13, v9}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    .line 1601
    :cond_a2b
    :try_start_a2b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1602
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v9, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1601
    const/4 v10, 0x0

    invoke-interface {v0, v2, v10, v4}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_a3b
    .catch Landroid/os/RemoteException; {:try_start_a2b .. :try_end_a3b} :catch_a62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2b .. :try_end_a3b} :catch_a3c

    goto :goto_a63

    .line 1604
    :catch_a3c
    move-exception v0

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1606
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a64

    .line 1603
    :catch_a62
    move-exception v0

    .line 1607
    :goto_a63
    nop

    .line 1610
    :goto_a64
    if-eqz v7, :cond_add

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_add

    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v0, :cond_add

    .line 1612
    :try_start_a6e
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7, v0, v12, v13, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1614
    invoke-direct {v11, v7, v9}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1615
    move/from16 v4, p2

    invoke-direct {v11, v9, v7, v4}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_a87
    .catch Landroid/os/RemoteException; {:try_start_a6e .. :try_end_a87} :catch_ac4
    .catch Ljava/lang/RuntimeException; {:try_start_a6e .. :try_end_a87} :catch_a88

    .line 1616
    return-void

    .line 1620
    :catch_a88
    move-exception v0

    .line 1621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed sending broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    invoke-virtual {v11, v9}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1629
    iget v3, v9, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v9, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1633
    const/4 v1, 0x0

    iput v1, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1634
    return-void

    .line 1617
    :catch_ac4
    move-exception v0

    .line 1618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when sending broadcast to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    :cond_add
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v22, 0x1

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1647
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    or-int/lit8 v23, v4, 0x4

    new-instance v4, Lcom/android/server/am/HostingRecord;

    iget-object v7, v9, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const-string v10, "broadcast"

    invoke-direct {v4, v10, v7}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1649
    iget-object v7, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1650
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x2000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_b04

    move/from16 v26, v8

    goto :goto_b06

    :cond_b04
    const/16 v26, 0x0

    :goto_b06
    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 1645
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v24, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_b66

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process is bad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-virtual {v11, v9}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1659
    iget v3, v9, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v9, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v9, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1662
    const/4 v5, 0x0

    iput v5, v9, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1663
    return-void

    .line 1666
    :cond_b66
    iget-object v0, v9, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v9}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1667
    iput-object v9, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1668
    iput v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    .line 1669
    return-void

    .line 1243
    :cond_b70
    move/from16 v4, p2

    move v5, v12

    move-object v1, v15

    const-wide/16 v2, 0x40

    const/4 v8, 0x1

    move-object v10, v1

    move-wide v13, v2

    move v15, v8

    goto/16 :goto_ed
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-string v1, "ORDERED"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    return-object p1
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const-string v1, "PARALLEL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    return-object p1
.end method

.method public scheduleBroadcastsLocked()V
    .registers 3

    .line 418
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_5

    .line 419
    return-void

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 423
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .registers 8

    .line 897
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 898
    move-wide p2, v0

    .line 906
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    const-string v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 909
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 911
    iget-object p4, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 912
    :cond_2e
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 913
    iget-object p4, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_51

    .line 914
    :cond_40
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 915
    iget-object p4, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 917
    :cond_51
    :goto_51
    iget-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 918
    return-void
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 11

    .line 347
    nop

    .line 348
    iget-object v7, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 349
    const/4 v8, 0x0

    if-eqz v7, :cond_80

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_80

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, v1, :cond_80

    .line 350
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "BroadcastQueue"

    if-eq v0, p1, :cond_3d

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App mismatch when sending pending broadcast to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", intended target is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v8

    .line 356
    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 357
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_45

    .line 358
    const/4 v8, 0x1

    .line 369
    goto :goto_80

    .line 359
    :catch_45
    move-exception p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in new application when starting receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 361
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    invoke-virtual {p0, v7}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 363
    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 365
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 367
    iput v8, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 368
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_80
    :goto_80
    return v8
.end method

.method final setBroadcastTimeoutLocked(J)V
    .registers 5

    .line 1684
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_14

    .line 1685
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1687
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1689
    :cond_14
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 386
    nop

    .line 387
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_e

    .line 390
    goto :goto_f

    .line 395
    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_1b

    .line 398
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 401
    :cond_1b
    if-eqz v0, :cond_20

    .line 402
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 404
    :cond_20
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 376
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_17

    .line 377
    const/4 p1, 0x0

    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 378
    iget p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput p1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 379
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 382
    :cond_17
    return-void
.end method

.method start(Landroid/content/ContentResolver;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->start()V

    .line 228
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1918
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1920
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1921
    add-int/lit8 v1, v1, -0x1

    :goto_1a
    if-ltz v1, :cond_2f

    .line 1922
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1921
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1924
    :cond_2f
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastDispatcher;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1925
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_45

    .line 1926
    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1929
    :cond_45
    iget v1, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 1930
    move v2, v1

    .line 1934
    :goto_48
    sget v3, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v12, -0x1

    invoke-direct {v0, v2, v12, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v2

    .line 1935
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v3, v3, v2

    .line 1936
    if-eqz v3, :cond_5d

    .line 1937
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1939
    :cond_5d
    if-ne v2, v1, :cond_c2

    .line 1941
    iget v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v1, v13

    .line 1943
    :goto_62
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v14

    .line 1944
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v1, v1, v14

    .line 1945
    if-nez v1, :cond_71

    .line 1946
    move/from16 p3, v13

    goto :goto_b6

    .line 1948
    :cond_71
    const-wide v2, 0x20b00000006L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1949
    const-wide v3, 0x10b00000001L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move/from16 p3, v13

    move-wide v12, v7

    move v7, v15

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 1951
    const-wide v1, 0x10300000002L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1953
    const-wide v1, 0x10300000003L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1955
    const-wide v1, 0x10300000004L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v3, v3, v14

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1957
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1958
    :goto_b6
    move/from16 v3, p3

    if-ne v14, v3, :cond_be

    .line 1959
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1960
    return-void

    .line 1958
    :cond_be
    move v13, v3

    move v1, v14

    const/4 v12, -0x1

    goto :goto_62

    .line 1939
    :cond_c2
    goto :goto_48
.end method
