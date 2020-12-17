.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;,
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

.field private static final TAG_POSTFIX_FREEZE:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_POSTFIX_INTERCEPT:Ljava/lang/String; = "BroadcastQueue"


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

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    const/16 v0, 0x32

    :goto_b
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x19

    goto :goto_18

    :cond_16
    const/16 v0, 0x12c

    :goto_18
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V
    .registers 10
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "constants"  # Lcom/android/server/am/BroadcastConstants;
    .param p5, "allowDelayBehindServices"  # Z

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 144
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    new-array v1, v1, [Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 145
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 151
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v2, v1, [Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 152
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 159
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 160
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 161
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 166
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 235
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 236
    new-instance v0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 237
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 238
    iput-boolean p5, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 240
    iput-object p4, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 241
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/BroadcastDispatcher;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 242
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 8
    .param p1, "original"  # Lcom/android/server/am/BroadcastRecord;

    .line 1999
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_5

    .line 2001
    return-void

    .line 2003
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2005
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    .line 2006
    nop

    .line 2007
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 2008
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2006
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2013
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 2015
    .local v0, "historyRecord":Lcom/android/server/am/BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object v0, v1, v2

    .line 2016
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2018
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v4, v1, v2

    .line 2019
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v4, v1, v2

    .line 2020
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v4, v1, v2

    .line 2021
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 2022
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 2023
    return-void
.end method

.method private createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .registers 7
    .param p1, "record"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "state"  # I

    .line 2069
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2070
    if-nez p2, :cond_9

    const-string/jumbo v1, "in queue"

    goto :goto_b

    :cond_9
    const-string v1, "dispatched"

    :goto_b
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2071
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_17

    move-object v2, v3

    goto :goto_19

    :cond_17
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_19
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2072
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_24

    const-string/jumbo v2, "process unknown"

    goto :goto_2a

    :cond_24
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2073
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_32

    goto :goto_38

    :cond_32
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :goto_38
    aput-object v3, v0, v1

    .line 2069
    const-string v1, "Broadcast %s from %s (%s) %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V
    .registers 28
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"  # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"  # Z
    .param p4, "index"  # I

    .line 668
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    const/4 v0, 0x0

    .line 669
    .local v0, "skip":Z
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v5, v13, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    const-string v2, " through "

    const-string v3, ") to "

    const-string v4, " from "

    const-string v5, ", uid="

    const-string v6, " (pid="

    const-string v10, "BroadcastQueue"

    if-nez v1, :cond_68

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Association not allowed: broadcasting "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 672
    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x1

    .line 678
    :cond_68
    if-nez v0, :cond_d0

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move/from16 v22, v0

    .end local v0  # "skip":Z
    .local v22, "skip":Z
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v14, v14, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v16, v1

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v0

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall blocked: broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 681
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x1

    .end local v22  # "skip":Z
    .restart local v0  # "skip":Z
    goto :goto_d4

    .line 678
    :cond_d0
    move/from16 v22, v0

    .line 687
    .end local v0  # "skip":Z
    .restart local v22  # "skip":Z
    :cond_d2
    move/from16 v0, v22

    .end local v22  # "skip":Z
    .restart local v0  # "skip":Z
    :goto_d4
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    const-string v2, ") requires appop "

    const/4 v3, -0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_18d

    .line 688
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    iget v8, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v1, v8, v9, v3, v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 690
    .local v1, "perm":I
    if-eqz v1, :cond_130

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: broadcasting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 692
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to registered receiver "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x1

    goto :goto_18d

    .line 699
    :cond_130
    iget-object v8, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v8

    .line 700
    .local v8, "opCode":I
    if-eq v8, v3, :cond_18d

    iget-object v9, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v14, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v3, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 701
    invoke-virtual {v9, v8, v14, v3}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_18d

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Appop Denial: broadcasting "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 704
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 707
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to registered receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v0, 0x1

    .line 714
    .end local v1  # "perm":I
    .end local v8  # "opCode":I
    :cond_18d
    :goto_18d
    const-string v1, " due to sender "

    const-string v3, ")"

    const-string v4, " (uid "

    const-string v8, " to "

    if-nez v0, :cond_29b

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v9, :cond_29b

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_29b

    .line 715
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1a1
    iget-object v14, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v14, v14

    if-ge v9, v14, :cond_296

    .line 716
    iget-object v14, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v14, v14, v9

    .line 717
    .local v14, "requiredPermission":Ljava/lang/String;
    iget-object v7, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v18, v0

    .end local v0  # "skip":Z
    .local v18, "skip":Z
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v19, v9

    const/4 v9, 0x1

    const/4 v15, -0x1

    .end local v9  # "i":I
    .local v19, "i":I
    invoke-static {v14, v7, v0, v15, v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    .line 719
    .local v0, "perm":I
    if-eqz v0, :cond_217

    .line 720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: receiving "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 721
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v9, v9, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") requires "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 720
    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v7, 0x1

    .line 729
    .end local v18  # "skip":Z
    .local v7, "skip":Z
    move v0, v7

    goto/16 :goto_29f

    .line 731
    .end local v7  # "skip":Z
    .restart local v18  # "skip":Z
    :cond_217
    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 732
    .local v7, "appOp":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_28b

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v7, v9, :cond_28b

    iget-object v9, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v15, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v15, v15, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v20, v0

    .end local v0  # "perm":I
    .local v20, "perm":I
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 733
    invoke-virtual {v9, v7, v15, v0}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28d

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Appop Denial: receiving "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 737
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v9, v9, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v0, 0x1

    .line 746
    .end local v18  # "skip":Z
    .local v0, "skip":Z
    goto :goto_29f

    .line 732
    .end local v20  # "perm":I
    .local v0, "perm":I
    .restart local v18  # "skip":Z
    :cond_28b
    move/from16 v20, v0

    .line 715
    .end local v0  # "perm":I
    .end local v7  # "appOp":I
    .end local v14  # "requiredPermission":Ljava/lang/String;
    :cond_28d
    add-int/lit8 v9, v19, 0x1

    move/from16 v15, p4

    move/from16 v0, v18

    const/4 v7, 0x1

    .end local v19  # "i":I
    .restart local v9  # "i":I
    goto/16 :goto_1a1

    .end local v18  # "skip":Z
    .local v0, "skip":Z
    :cond_296
    move/from16 v18, v0

    move/from16 v19, v9

    .end local v0  # "skip":Z
    .end local v9  # "i":I
    .restart local v18  # "skip":Z
    .restart local v19  # "i":I
    goto :goto_29d

    .line 714
    .end local v18  # "skip":Z
    .end local v19  # "i":I
    .restart local v0  # "skip":Z
    :cond_29b
    move/from16 v18, v0

    .line 750
    .end local v0  # "skip":Z
    .restart local v18  # "skip":Z
    :goto_29d
    move/from16 v0, v18

    .end local v18  # "skip":Z
    .restart local v0  # "skip":Z
    :goto_29f
    const/4 v14, 0x0

    if-nez v0, :cond_312

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_2af

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_2ac

    goto :goto_2af

    :cond_2ac
    move/from16 v18, v0

    goto :goto_314

    .line 751
    :cond_2af
    :goto_2af
    iget-object v7, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->uid:I

    move/from16 v18, v0

    const/4 v0, 0x1

    const/4 v15, -0x1

    .end local v0  # "skip":Z
    .restart local v18  # "skip":Z
    invoke-static {v14, v7, v9, v15, v0}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v7

    .line 753
    .local v7, "perm":I
    if-eqz v7, :cond_314

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: security check failed when receiving "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 755
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v9, v9, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") due to sender "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x1

    .end local v18  # "skip":Z
    .restart local v0  # "skip":Z
    goto :goto_316

    .line 750
    .end local v7  # "perm":I
    :cond_312
    move/from16 v18, v0

    .line 764
    .end local v0  # "skip":Z
    .restart local v18  # "skip":Z
    :cond_314
    :goto_314
    move/from16 v0, v18

    .end local v18  # "skip":Z
    .restart local v0  # "skip":Z
    :goto_316
    if-nez v0, :cond_387

    iget v7, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_387

    iget-object v7, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v9, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v15, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v15, v15, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v14, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 765
    invoke-virtual {v7, v9, v15, v14}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_387

    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Appop Denial: receiving "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 769
    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v9, v9, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v9, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 773
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x1

    .line 779
    :cond_387
    if-nez v0, :cond_3cd

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3a1

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_3a1

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 780
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v1

    if-eqz v1, :cond_3cd

    .line 781
    :cond_3a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping deliver ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process gone or crashing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x1

    .line 788
    :cond_3cd
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 789
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3da

    const/4 v7, 0x1

    goto :goto_3db

    :cond_3da
    const/4 v7, 0x0

    :goto_3db
    move v14, v7

    .line 791
    .local v14, "visibleToInstantApps":Z
    if-nez v0, :cond_43c

    if-nez v14, :cond_43c

    iget-boolean v1, v13, Lcom/android/server/am/BroadcastFilter;->instantApp:Z

    if-eqz v1, :cond_43c

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v2, :cond_43c

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant App Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 794
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not specifying FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x1

    .line 804
    :cond_43c
    if-nez v0, :cond_49c

    iget-boolean v1, v13, Lcom/android/server/am/BroadcastFilter;->visibleToInstantApp:Z

    if-nez v1, :cond_49c

    iget-boolean v1, v12, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v1, :cond_49c

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v1, v1, Lcom/android/server/am/ReceiverList;->uid:I

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v1, v2, :cond_49c

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant App Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 807
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires receiver be visible to instant apps due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x1

    .line 819
    :cond_49c
    if-nez v0, :cond_570

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_570

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_570

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeze: Skipping deliver ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": process freezing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x1

    .line 823
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v1

    .line 824
    .local v1, "flag":I
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4eb

    const/4 v7, 0x1

    goto :goto_4ec

    :cond_4eb
    const/4 v7, 0x0

    :goto_4ec
    move v2, v7

    .line 825
    .local v2, "isFromNotification":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r.intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isFromNotification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-nez v2, :cond_525

    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_523

    goto :goto_525

    :cond_523
    move v15, v0

    goto :goto_571

    .line 827
    :cond_525
    :goto_525
    iget-object v3, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_535
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 828
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze: unfreeze pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v5, v6}, Lcom/meizu/pps/observer/PPSServer;->scheduleForceUnFreeze(I)V

    .line 830
    const/4 v0, 0x0

    .line 831
    .end local v4  # "pkg":Ljava/lang/String;
    goto :goto_535

    .line 827
    :cond_56e
    move v15, v0

    goto :goto_571

    .line 836
    .end local v1  # "flag":I
    .end local v2  # "isFromNotification":Z
    :cond_570
    move v15, v0

    .end local v0  # "skip":Z
    .local v15, "skip":Z
    :goto_571
    const/4 v0, 0x2

    if-eqz v15, :cond_57b

    .line 837
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    move/from16 v9, p4

    aput v0, v1, v9

    .line 838
    return-void

    .line 845
    :cond_57b
    move/from16 v9, p4

    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iget v2, v13, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-direct {v11, v12, v1, v2}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_58c

    .line 847
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v0, v1, v9

    .line 848
    return-void

    .line 851
    :cond_58c
    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v2, 0x1

    aput v2, v1, v9

    .line 856
    move/from16 v8, p3

    if-eqz v8, :cond_5c7

    .line 857
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 858
    iput-object v13, v12, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 859
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v12, v1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 860
    iput v0, v12, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 861
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5c7

    .line 867
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v0, v12, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 868
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_startReceiver"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 874
    :cond_5c7
    :try_start_5c7
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z
    :try_end_5c9
    .catch Landroid/os/RemoteException; {:try_start_5c7 .. :try_end_5c9} :catch_6ad

    if-eqz v0, :cond_5ee

    :try_start_5cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e7
    .catch Landroid/os/RemoteException; {:try_start_5cb .. :try_end_5e7} :catch_5e8

    goto :goto_5ee

    .line 911
    :catch_5e8
    move-exception v0

    move/from16 v18, v14

    move-object v14, v10

    goto/16 :goto_6b1

    .line 879
    :cond_5ee
    :goto_5ee
    :try_start_5ee
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z
    :try_end_5f0
    .catch Landroid/os/RemoteException; {:try_start_5ee .. :try_end_5f0} :catch_6ad

    if-eqz v0, :cond_63c

    .line 880
    :try_start_5f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BDC-Delivering broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63c
    .catch Landroid/os/RemoteException; {:try_start_5f2 .. :try_end_63c} :catch_5e8

    .line 890
    :cond_63c
    :try_start_63c
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_640
    .catch Landroid/os/RemoteException; {:try_start_63c .. :try_end_640} :catch_6ad

    if-eqz v0, :cond_657

    :try_start_642
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v0, :cond_657

    .line 893
    if-eqz v8, :cond_653

    .line 894
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    :try_end_64f
    .catch Landroid/os/RemoteException; {:try_start_642 .. :try_end_64f} :catch_5e8

    move/from16 v18, v14

    move-object v14, v10

    goto :goto_69e

    .line 893
    :cond_653
    move/from16 v18, v14

    move-object v14, v10

    goto :goto_69e

    .line 897
    :cond_657
    :try_start_657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 898
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 899
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v12, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v12, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v1, v12, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z
    :try_end_67d
    .catch Landroid/os/RemoteException; {:try_start_657 .. :try_end_67d} :catch_6ad

    move-object/from16 v17, v10

    :try_start_67f
    iget v10, v12, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_681
    .catch Landroid/os/RemoteException; {:try_start_67f .. :try_end_681} :catch_6a7

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v8, v0

    move/from16 v9, v18

    move/from16 v18, v14

    move-object/from16 v14, v17

    .end local v14  # "visibleToInstantApps":Z
    .local v18, "visibleToInstantApps":Z
    :try_start_68c
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 904
    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v0, :cond_69e

    iget-boolean v0, v12, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_69e

    .line 905
    iget-object v0, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 908
    :cond_69e
    :goto_69e
    if-eqz p3, :cond_6a6

    .line 909
    const/4 v0, 0x3

    iput v0, v12, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_6a3
    .catch Landroid/os/RemoteException; {:try_start_68c .. :try_end_6a3} :catch_6a4

    goto :goto_6a6

    .line 911
    :catch_6a4
    move-exception v0

    goto :goto_6b1

    .line 926
    :cond_6a6
    :goto_6a6
    goto :goto_6ea

    .line 911
    .end local v18  # "visibleToInstantApps":Z
    .restart local v14  # "visibleToInstantApps":Z
    :catch_6a7
    move-exception v0

    move/from16 v18, v14

    move-object/from16 v14, v17

    goto :goto_6b1

    :catch_6ad
    move-exception v0

    move/from16 v18, v14

    move-object v14, v10

    .line 912
    .end local v14  # "visibleToInstantApps":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18  # "visibleToInstantApps":Z
    :goto_6b1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_6df

    .line 915
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 916
    if-eqz p3, :cond_6df

    .line 917
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 921
    :cond_6df
    if-eqz p3, :cond_6ea

    .line 922
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 923
    iput-object v1, v12, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 924
    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v1, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 927
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_6ea
    :goto_6ea
    return-void
.end method

.method private enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 291
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 292
    const/4 v2, 0x0

    .line 293
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 292
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 296
    :cond_1a
    return-void
.end method

.method private hook_Broadcast(ZLcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 29
    .param p1, "isInterceptV2"  # Z
    .param p2, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p3, "filter"  # Lcom/android/server/am/BroadcastFilter;

    .line 2387
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT_BROADCAST_DETAILS:Z

    if-eqz v3, :cond_e9

    .line 2388
    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_e6

    iget-object v3, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_e6

    .line 2389
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2390
    .local v3, "focusedApp":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2391
    .local v4, "callerPkg":Ljava/lang/String;
    if-nez v4, :cond_25

    .line 2392
    const-string/jumbo v4, "unknown"

    .line 2394
    :cond_25
    iget-object v15, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 2395
    .local v15, "calleePkg":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v14

    .line 2396
    .local v14, "isCallerSystemApp":Z
    invoke-static {v15}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v13

    .line 2399
    .local v13, "isCalleeSystemApp":Z
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v12, v5

    .line 2400
    .local v12, "isFgAction":Z
    iget-object v5, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v5, :cond_3e

    const-string/jumbo v5, "unknown"

    goto :goto_44

    .line 2401
    :cond_3e
    iget-object v5, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_44
    move-object v11, v5

    .line 2403
    .local v11, "targetProcess":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBroadcastStats:Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move v6, v12

    move v7, v14

    move v8, v13

    move-object/from16 v19, v9

    move/from16 v9, p1

    move-object/from16 v20, v11

    .end local v11  # "targetProcess":Ljava/lang/String;
    .local v20, "targetProcess":Ljava/lang/String;
    move/from16 v11, v16

    move/from16 v21, v12

    .end local v12  # "isFgAction":Z
    .local v21, "isFgAction":Z
    move-object/from16 v12, v17

    move/from16 v22, v13

    .end local v13  # "isCalleeSystemApp":Z
    .local v22, "isCalleeSystemApp":Z
    move-object v13, v4

    move/from16 v23, v14

    .end local v14  # "isCallerSystemApp":Z
    .local v23, "isCallerSystemApp":Z
    move-object v14, v15

    move-object/from16 v24, v15

    .end local v15  # "calleePkg":Ljava/lang/String;
    .local v24, "calleePkg":Ljava/lang/String;
    move/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/hips/intercept/InterceptionStats;->updateStats(ZZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)V

    .line 2406
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v5, :cond_d9

    .line 2407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze: try to deliver broadcast isFgAction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v21

    .end local v21  # "isFgAction":Z
    .local v6, "isFgAction":Z
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", focusedApp:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isCallerSystemApp:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v23

    .end local v23  # "isCallerSystemApp":Z
    .local v7, "isCallerSystemApp":Z
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isCalleeSystemApp:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v22

    .end local v22  # "isCalleeSystemApp":Z
    .local v8, "isCalleeSystemApp":Z
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", callerPkg:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", calleePkg:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v24

    .end local v24  # "calleePkg":Ljava/lang/String;
    .local v9, "calleePkg":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", within_process:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    .end local v20  # "targetProcess":Ljava/lang/String;
    .local v10, "targetProcess":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", isInterceptV2:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "BroadcastQueue"

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    .line 2406
    .end local v6  # "isFgAction":Z
    .end local v7  # "isCallerSystemApp":Z
    .end local v8  # "isCalleeSystemApp":Z
    .end local v9  # "calleePkg":Ljava/lang/String;
    .end local v10  # "targetProcess":Ljava/lang/String;
    .restart local v20  # "targetProcess":Ljava/lang/String;
    .restart local v21  # "isFgAction":Z
    .restart local v22  # "isCalleeSystemApp":Z
    .restart local v23  # "isCallerSystemApp":Z
    .restart local v24  # "calleePkg":Ljava/lang/String;
    :cond_d9
    move/from16 v11, p1

    move-object/from16 v10, v20

    move/from16 v6, v21

    move/from16 v8, v22

    move/from16 v7, v23

    move-object/from16 v9, v24

    .end local v20  # "targetProcess":Ljava/lang/String;
    .end local v21  # "isFgAction":Z
    .end local v22  # "isCalleeSystemApp":Z
    .end local v23  # "isCallerSystemApp":Z
    .end local v24  # "calleePkg":Ljava/lang/String;
    .restart local v6  # "isFgAction":Z
    .restart local v7  # "isCallerSystemApp":Z
    .restart local v8  # "isCalleeSystemApp":Z
    .restart local v9  # "calleePkg":Ljava/lang/String;
    .restart local v10  # "targetProcess":Ljava/lang/String;
    goto :goto_eb

    .line 2388
    .end local v3  # "focusedApp":Ljava/lang/String;
    .end local v4  # "callerPkg":Ljava/lang/String;
    .end local v6  # "isFgAction":Z
    .end local v7  # "isCallerSystemApp":Z
    .end local v8  # "isCalleeSystemApp":Z
    .end local v9  # "calleePkg":Ljava/lang/String;
    .end local v10  # "targetProcess":Ljava/lang/String;
    :cond_e6
    move/from16 v11, p1

    goto :goto_eb

    .line 2387
    :cond_e9
    move/from16 v11, p1

    .line 2423
    :goto_eb
    const/4 v3, 0x0

    return v3
.end method

.method private hook_StaticBroadcast(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)Z
    .registers 28
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"  # Landroid/content/pm/ResolveInfo;
    .param p3, "targetProcess"  # Ljava/lang/String;
    .param p4, "isInterceptV2"  # Z

    .line 2353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p4

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2354
    .local v15, "focusedApp":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2355
    .local v2, "callerPkg":Ljava/lang/String;
    if-nez v2, :cond_15

    .line 2356
    const-string/jumbo v2, "unknown"

    move-object v13, v2

    goto :goto_16

    .line 2355
    :cond_15
    move-object v13, v2

    .line 2358
    .end local v2  # "callerPkg":Ljava/lang/String;
    .local v13, "callerPkg":Ljava/lang/String;
    :goto_16
    move-object/from16 v12, p2

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2361
    .local v11, "calleePkg":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v10

    .line 2362
    .local v10, "isCallerSystemApp":Z
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v9

    .line 2363
    .local v9, "isCalleeSystemApp":Z
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v8, v2

    .line 2365
    .local v8, "isFgAction":Z
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastStats:Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    xor-int/lit8 v18, v14, 0x1

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move v3, v8

    move v4, v10

    move v5, v9

    move-object/from16 v19, v6

    move/from16 v6, p4

    move/from16 v20, v8

    .end local v8  # "isFgAction":Z
    .local v20, "isFgAction":Z
    move/from16 v8, v16

    move/from16 v21, v9

    .end local v9  # "isCalleeSystemApp":Z
    .local v21, "isCalleeSystemApp":Z
    move-object/from16 v9, v17

    move/from16 v22, v10

    .end local v10  # "isCallerSystemApp":Z
    .local v22, "isCallerSystemApp":Z
    move-object v10, v13

    move-object/from16 v16, v11

    .end local v11  # "calleePkg":Ljava/lang/String;
    .local v16, "calleePkg":Ljava/lang/String;
    move/from16 v12, v18

    move-object v0, v13

    .end local v13  # "callerPkg":Ljava/lang/String;
    .local v0, "callerPkg":Ljava/lang/String;
    move-object/from16 v13, v19

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/hips/intercept/InterceptionStats;->updateStats(ZZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)V

    .line 2368
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    if-eqz v2, :cond_bb

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze: try to real start broadcast process isFgAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v20

    .end local v20  # "isFgAction":Z
    .local v3, "isFgAction":Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", focusedApp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isCallerSystemApp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    .end local v22  # "isCallerSystemApp":Z
    .local v4, "isCallerSystemApp":Z
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCalleeSystemApp:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v21

    .end local v21  # "isCalleeSystemApp":Z
    .local v5, "isCalleeSystemApp":Z
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", callerPkg:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", calleePkg:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    .end local v16  # "calleePkg":Ljava/lang/String;
    .local v6, "calleePkg":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", within_process:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isInterceptV2:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "BroadcastQueue"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 2368
    .end local v3  # "isFgAction":Z
    .end local v4  # "isCallerSystemApp":Z
    .end local v5  # "isCalleeSystemApp":Z
    .end local v6  # "calleePkg":Ljava/lang/String;
    .restart local v16  # "calleePkg":Ljava/lang/String;
    .restart local v20  # "isFgAction":Z
    .restart local v21  # "isCalleeSystemApp":Z
    .restart local v22  # "isCallerSystemApp":Z
    :cond_bb
    move-object/from16 v7, p3

    move-object/from16 v6, v16

    move/from16 v3, v20

    move/from16 v5, v21

    move/from16 v4, v22

    .line 2383
    .end local v16  # "calleePkg":Ljava/lang/String;
    .end local v20  # "isFgAction":Z
    .end local v21  # "isCalleeSystemApp":Z
    .end local v22  # "isCallerSystemApp":Z
    .restart local v3  # "isFgAction":Z
    .restart local v4  # "isCallerSystemApp":Z
    .restart local v5  # "isCalleeSystemApp":Z
    .restart local v6  # "calleePkg":Ljava/lang/String;
    :goto_c5
    const/4 v2, 0x0

    return v2
.end method

.method private static isThirdParty(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p0, "process"  # Lcom/android/server/am/ProcessRecord;

    .line 2294
    if-eqz p0, :cond_12

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    goto :goto_12

    .line 2297
    :cond_11
    return v1

    .line 2295
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 2
    .param p0, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 499
    return-void
.end method

.method private maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 5
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 1853
    if-eqz p2, :cond_2d

    if-eqz p1, :cond_2d

    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-nez v0, :cond_9

    goto :goto_2d

    .line 1856
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

    .line 1859
    .local v0, "msgToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1861
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 1862
    return-void

    .line 1854
    .end local v0  # "msgToken":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private nextSplitTokenLocked()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    add-int/lit8 v0, v0, 0x1

    .line 482
    .local v0, "next":I
    if-gtz v0, :cond_7

    .line 483
    const/4 v0, 0x1

    .line 485
    :cond_7
    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mNextToken:I

    .line 486
    return v0
.end method

.method private postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 10
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 492
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

    .line 495
    .local v0, "msgToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-wide v3, p2, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v5, v5, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 500
    return-void
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 23
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipOomAdj"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": NOT STARTED!"

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const-string v5, "Process cur broadcast "

    const-string v6, "BroadcastQueue"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for app "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2a
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_16d

    .line 338
    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->inFullBackup:Z

    if-eqz v0, :cond_36

    .line 339
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 340
    return-void

    .line 343
    :cond_36
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 344
    iput-object v3, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 345
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 347
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v7, v8}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 348
    if-nez p3, :cond_5d

    .line 349
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "updateOomAdj_meh"

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 353
    :cond_5d
    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    const/4 v7, 0x0

    .line 357
    .local v7, "started":Z
    :try_start_65
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_87

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering to component "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_87
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 365
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_d7

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BDC-Delivering broadcast: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", queue="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ordered="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", app="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", receiver="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_d7
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v10, Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v11, v2, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 375
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    iget v13, v2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v0, v2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v8, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 377
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v18

    .line 374
    move/from16 v16, v0

    move/from16 v17, v8

    invoke-interface/range {v9 .. v18}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 378
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_11f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " DELIVERED for app "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_65 .. :try_end_11f} :catchall_146

    .line 380
    :cond_11f
    const/4 v0, 0x1

    .line 382
    .end local v7  # "started":Z
    .local v0, "started":Z
    if-nez v0, :cond_145

    .line 383
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_13b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_13b
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 386
    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 387
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 390
    :cond_145
    return-void

    .line 382
    .end local v0  # "started":Z
    .restart local v7  # "started":Z
    :catchall_146
    move-exception v0

    if-nez v7, :cond_16c

    .line 383
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v8, :cond_162

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_162
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 386
    iput-object v4, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 387
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_16c
    throw v0

    .line 336
    .end local v7  # "started":Z
    :cond_16d
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 9
    .param p2, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"  # Ljava/lang/String;
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

    .line 316
    .local p1, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-lez v1, :cond_51

    .line 318
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 319
    .local v2, "old":Lcom/android/server/am/BroadcastRecord;
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 320
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_4a

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** DROPPING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_4a
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object v2

    .line 317
    .end local v2  # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 328
    .end local v1  # "i":I
    :cond_51
    const/4 v1, 0x0

    return-object v1
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
    .registers 26
    .param p1, "receiverRecord"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "receivingPackageName"  # Ljava/lang/String;
    .param p3, "receivingUserId"  # I

    .line 932
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

    .line 934
    return v5

    .line 937
    :cond_16
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v4, :cond_25

    .line 938
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v4, :cond_23

    move v4, v5

    goto :goto_26

    :cond_23
    move v4, v6

    goto :goto_26

    .line 939
    :cond_25
    move v4, v5

    :goto_26
    nop

    .line 942
    .local v4, "callerForeground":Z
    const-string/jumbo v7, "u"

    const-string v8, "BroadcastQueue"

    if-eqz v4, :cond_b7

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_b7

    .line 943
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v9, v5, [Landroid/content/Intent;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v15, v9, v6

    new-array v5, v5, [Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 948
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 947
    invoke-virtual {v15, v11}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    .line 943
    const/4 v11, 0x1

    const/4 v15, 0x0

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v5

    .line 954
    .local v5, "target":Landroid/content/IIntentSender;
    new-instance v9, Landroid/content/Intent;

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v10

    if-eqz v10, :cond_75

    .line 955
    const-string v10, "android.intent.action.REVIEW_PERMISSIONS"

    goto :goto_77

    :cond_75
    const-string v10, "flyme.intent.action.REVIEW_PERMISSIONS"

    :goto_77
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v10, 0x18800000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 960
    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    new-instance v10, Landroid/content/IntentSender;

    invoke-direct {v10, v5}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v11, "android.intent.extra.INTENT"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v10, :cond_ac

    .line 964
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Launching permission review for package "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_ac
    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v8, Lcom/android/server/am/BroadcastQueue$1;

    invoke-direct {v8, v0, v9, v3}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 974
    .end local v5  # "target":Landroid/content/IIntentSender;
    .end local v9  # "intent":Landroid/content/Intent;
    goto :goto_d6

    .line 975
    :cond_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Receiving a broadcast in package"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requires a permissions review"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_d6
    return v6
.end method

.method private final ringAdvance(III)I
    .registers 5
    .param p1, "x"  # I
    .param p2, "increment"  # I
    .param p3, "ringSize"  # I

    .line 1992
    add-int/2addr p1, p2

    .line 1993
    if-gez p1, :cond_6

    add-int/lit8 v0, p3, -0x1

    return v0

    .line 1994
    :cond_6
    if-lt p1, p3, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1995
    :cond_a
    return p1
.end method

.method private skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 454
    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 456
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 457
    return-void
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 619
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 620
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_21

    .line 621
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_21

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    .line 622
    const-string v1, "BroadcastQueue"

    const-string v2, "Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 624
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 628
    :cond_21
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .registers 16
    .param p1, "fromMsg"  # Z

    .line 1880
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1881
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1884
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b6

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_1b6

    .line 1888
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1889
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 1890
    .local v3, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_8a

    .line 1891
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_2a

    .line 1894
    return-void

    .line 1898
    :cond_2a
    iget-boolean v4, v3, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz v4, :cond_4f

    .line 1899
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4e

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast timeout but it\'s exempt: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1901
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1900
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_4e
    return-void

    .line 1906
    :cond_4f
    iget-wide v4, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v6, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v4, v6

    .line 1907
    .local v4, "timeoutTime":J
    cmp-long v6, v4, v1

    if-lez v6, :cond_8a

    .line 1912
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_86

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Premature timeout ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] @ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ": resetting BROADCAST_TIMEOUT_MSG for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BroadcastQueue"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_86
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1917
    return-void

    .line 1921
    .end local v4  # "timeoutTime":J
    :cond_8a
    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_bb

    .line 1926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waited long enough for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_a5

    .line 1927
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a7

    :cond_a5
    const-string v5, "(null)"

    :goto_a7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1926
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iput-object v6, v3, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1929
    iput v0, v3, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1930
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 1931
    return-void

    .line 1937
    :cond_bb
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    if-eqz v4, :cond_c9

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v4

    if-eqz v4, :cond_c9

    move v0, v5

    .line 1939
    .local v0, "debugging":Z
    :cond_c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout of broadcast "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " - receiver="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", started "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v1, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ago"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "BroadcastQueue"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iput-wide v1, v3, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1942
    if-nez v0, :cond_104

    .line 1943
    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1946
    :cond_104
    const/4 v4, 0x0

    .line 1947
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v7, 0x0

    .line 1950
    .local v7, "anrMessage":Ljava/lang/String;
    iget v8, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v8, :cond_11d

    .line 1951
    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v9, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1952
    .local v8, "curReceiver":Ljava/lang/Object;
    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v10, v5

    const/4 v5, 0x3

    aput v5, v9, v10

    move-object v11, v8

    goto :goto_120

    .line 1954
    .end local v8  # "curReceiver":Ljava/lang/Object;
    :cond_11d
    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object v11, v8

    .line 1956
    .local v11, "curReceiver":Ljava/lang/Object;
    :goto_120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver during timeout of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "BroadcastQueue"

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1958
    if-eqz v11, :cond_171

    instance-of v5, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_171

    .line 1959
    move-object v5, v11

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 1960
    .local v5, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v8, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v8, :cond_16f

    iget-object v8, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v8, v8, Lcom/android/server/am/ReceiverList;->pid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_16f

    .line 1962
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v8

    .line 1963
    :try_start_15d
    iget-object v9, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v10, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v10, v10, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    move-object v4, v9

    .line 1965
    monitor-exit v8

    goto :goto_16f

    :catchall_16c
    move-exception v6

    monitor-exit v8
    :try_end_16e
    .catchall {:try_start_15d .. :try_end_16e} :catchall_16c

    throw v6

    .line 1967
    .end local v5  # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_16f
    :goto_16f
    move-object v12, v4

    goto :goto_174

    .line 1968
    :cond_171
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object v12, v4

    .line 1971
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :goto_174
    if-eqz v12, :cond_18f

    .line 1972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_190

    .line 1971
    :cond_18f
    move-object v13, v7

    .line 1975
    .end local v7  # "anrMessage":Ljava/lang/String;
    .local v13, "anrMessage":Ljava/lang/String;
    :goto_190
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v3, :cond_196

    .line 1976
    iput-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1980
    :cond_196
    iget v6, v3, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v3, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1984
    if-nez v0, :cond_1b5

    if-eqz v13, :cond_1b5

    .line 1987
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v5, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    invoke-direct {v5, p0, v12, v13}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 1989
    :cond_1b5
    return-void

    .line 1885
    .end local v0  # "debugging":Z
    .end local v1  # "now":J
    .end local v3  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v11  # "curReceiver":Ljava/lang/Object;
    .end local v12  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13  # "anrMessage":Ljava/lang/String;
    :cond_1b6
    :goto_1b6
    return-void
.end method

.method final cancelBroadcastTimeoutLocked()V
    .registers 3

    .line 1873
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_e

    .line 1874
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1877
    :cond_e
    return-void
.end method

.method cancelDeferrals()V
    .registers 3

    .line 2084
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2085
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->cancelDeferralsLocked()V

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 2087
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2088
    return-void

    .line 2087
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cleanupBroadcastLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 15
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, "reschedule":Z
    invoke-static {p1}, Lcom/android/server/am/BroadcastQueue;->isThirdParty(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupBroadcastLocked skipPendingBroadcastLocked app = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->skipPendingBroadcastLocked(I)V

    .line 2309
    const/4 v1, 0x0

    .line 2310
    .local v1, "nSize":I
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getOrderBroadcastsList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getOrderBroadcastsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 2311
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher;->getOrderBroadcastsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 2313
    :cond_41
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_43
    if-ltz v3, :cond_a9

    .line 2314
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastDispatcher;->getOrderBroadcastsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 2315
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_a6

    .line 2316
    const/4 v5, 0x0

    .line 2317
    .local v5, "isSentToSelf":Z
    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 2318
    .local v6, "receivers":Ljava/util/List;
    if-eqz v6, :cond_5f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_60

    :cond_5f
    const/4 v7, 0x0

    .line 2319
    .local v7, "N":I
    :goto_60
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_61
    if-ge v8, v7, :cond_81

    .line 2320
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2321
    .local v9, "receiver":Ljava/lang/Object;
    instance-of v10, v9, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_7e

    .line 2322
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2323
    .local v10, "appProcessName":Ljava/lang/String;
    move-object v11, v9

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2324
    .local v11, "receiverProcessName":Ljava/lang/String;
    if-eqz v10, :cond_7e

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 2325
    const/4 v5, 0x1

    .line 2326
    goto :goto_81

    .line 2319
    .end local v9  # "receiver":Ljava/lang/Object;
    .end local v10  # "appProcessName":Ljava/lang/String;
    .end local v11  # "receiverProcessName":Ljava/lang/String;
    :cond_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_61

    .line 2330
    .end local v8  # "j":I
    :cond_81
    :goto_81
    if-eqz v5, :cond_a6

    .line 2331
    if-nez v3, :cond_9c

    .line 2332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleanupBroadcastLocked cancelBroadcastTimeoutLocked r = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 2335
    :cond_9c
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v8}, Lcom/android/server/am/BroadcastDispatcher;->getOrderBroadcastsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2336
    const/4 v0, 0x1

    .line 2313
    .end local v4  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v5  # "isSentToSelf":Z
    .end local v6  # "receivers":Ljava/util/List;
    .end local v7  # "N":I
    :cond_a6
    add-int/lit8 v3, v3, -0x1

    goto :goto_43

    .line 2340
    .end local v3  # "i":I
    :cond_a9
    if-eqz v0, :cond_ae

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 2344
    .end local v1  # "nSize":I
    :cond_ae
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "doit"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 2027
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2028
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_20

    .line 2029
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2031
    if-nez p4, :cond_1d

    if-eqz v0, :cond_1d

    .line 2032
    return v2

    .line 2028
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2036
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2039
    return v0
.end method

.method describeState()Ljava/lang/String;
    .registers 4

    .line 2091
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parallel; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 2093
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    .line 2092
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 2094
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
    .registers 30
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;
    .param p7, "needSep"  # Z

    .line 2145
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2146
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, ":"

    const-string v6, " #"

    const-string v7, "]:"

    const-string v8, "    "

    const/4 v9, 0x1

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastDispatcher;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_2c

    goto :goto_30

    :cond_2c
    move/from16 v10, p7

    goto/16 :goto_d8

    .line 2148
    :cond_30
    :goto_30
    const/4 v4, 0x0

    .line 2149
    .local v4, "printed":Z
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    move/from16 v11, p7

    .end local p7  # "needSep":Z
    .local v10, "i":I
    .local v11, "needSep":Z
    :goto_3a
    if-ltz v10, :cond_96

    .line 2150
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastRecord;

    .line 2151
    .local v12, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v2, :cond_4f

    iget-object v13, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4f

    .line 2152
    goto :goto_93

    .line 2154
    :cond_4f
    if-nez v4, :cond_71

    .line 2155
    if-eqz v11, :cond_56

    .line 2156
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2158
    :cond_56
    const/4 v11, 0x1

    .line 2159
    const/4 v4, 0x1

    .line 2160
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Active broadcasts ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    :cond_71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Active Broadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v12, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 2149
    .end local v12  # "br":Lcom/android/server/am/BroadcastRecord;
    :goto_93
    add-int/lit8 v10, v10, -0x1

    goto :goto_3a

    .line 2166
    .end local v10  # "i":I
    :cond_96
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v1, v2, v12, v3}, Lcom/android/server/am/BroadcastDispatcher;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z

    .line 2168
    if-eqz v2, :cond_ae

    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v10, :cond_ac

    iget-object v10, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2169
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    goto :goto_ae

    .line 2181
    .end local v4  # "printed":Z
    :cond_ac
    move v10, v11

    goto :goto_d8

    .line 2170
    .restart local v4  # "printed":Z
    :cond_ae
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Pending broadcast ["

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2172
    iget-object v10, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v10, :cond_d2

    .line 2173
    invoke-virtual {v10, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_d7

    .line 2175
    :cond_d2
    const-string v10, "    (null)"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    :goto_d7
    const/4 v10, 0x1

    .line 2181
    .end local v4  # "printed":Z
    .end local v11  # "needSep":Z
    .local v10, "needSep":Z
    :goto_d8
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v4, v1}, Lcom/android/server/am/BroadcastConstants;->dump(Ljava/io/PrintWriter;)V

    .line 2184
    const/4 v4, 0x0

    .line 2186
    .restart local v4  # "printed":Z
    const/4 v11, -0x1

    .line 2187
    .local v11, "i":I
    iget v12, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2188
    .local v12, "lastIndex":I
    move v13, v12

    .line 2192
    .local v13, "ringIndex":I
    :goto_e2
    sget v14, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v15, -0x1

    invoke-direct {v0, v13, v15, v14}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2193
    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v14, v14, v13

    .line 2194
    .local v14, "r":Lcom/android/server/am/BroadcastRecord;
    const-string v15, "    extras: "

    const-string v9, ": "

    move/from16 v17, v12

    .end local v12  # "lastIndex":I
    .local v17, "lastIndex":I
    const-string v12, "  #"

    move/from16 v18, v13

    .end local v13  # "ringIndex":I
    .local v18, "ringIndex":I
    if-nez v14, :cond_fd

    .line 2195
    move-object/from16 v21, v5

    goto/16 :goto_1a9

    .line 2198
    :cond_fd
    add-int/lit8 v11, v11, 0x1

    .line 2199
    if-eqz v2, :cond_10d

    iget-object v13, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10d

    .line 2200
    move-object/from16 v21, v5

    goto/16 :goto_1a9

    .line 2202
    :cond_10d
    if-nez v4, :cond_134

    .line 2203
    if-eqz v10, :cond_114

    .line 2204
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2206
    :cond_114
    const/4 v10, 0x1

    .line 2207
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    .end local v4  # "printed":Z
    .local v20, "printed":Z
    const-string v4, "  Historical broadcasts ["

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    const/4 v4, 0x1

    move/from16 v20, v4

    .end local v20  # "printed":Z
    .restart local v4  # "printed":Z
    goto :goto_136

    .line 2202
    :cond_134
    move/from16 v20, v4

    .line 2210
    .end local v4  # "printed":Z
    .restart local v20  # "printed":Z
    :goto_136
    if-eqz p5, :cond_15d

    .line 2211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Historical Broadcast "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v14, v1, v8, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    move-object/from16 v21, v5

    goto :goto_1a7

    .line 2215
    :cond_15d
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2216
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2217
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v5

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v5, v5, v13}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_195

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v5, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eq v4, v5, :cond_195

    .line 2219
    const-string v4, "    targetComp: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    :cond_195
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2222
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1a7

    .line 2223
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    .end local v4  # "bundle":Landroid/os/Bundle;
    .end local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_1a7
    :goto_1a7
    move/from16 v4, v20

    .end local v20  # "printed":Z
    .local v4, "printed":Z
    :goto_1a9
    move/from16 v5, v17

    move/from16 v13, v18

    .end local v17  # "lastIndex":I
    .end local v18  # "ringIndex":I
    .local v5, "lastIndex":I
    .restart local v13  # "ringIndex":I
    if-ne v13, v5, :cond_2b1

    .line 2228
    if-nez v2, :cond_2af

    .line 2229
    iget v6, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v13, v6

    .line 2230
    .end local v5  # "lastIndex":I
    .local v6, "lastIndex":I
    if-eqz p5, :cond_1b9

    .line 2231
    const/4 v4, 0x0

    .line 2232
    const/4 v11, -0x1

    goto :goto_1d4

    .line 2235
    :cond_1b9
    move v5, v11

    .line 2236
    .local v5, "j":I
    :goto_1ba
    if-lez v5, :cond_1d4

    if-eq v13, v6, :cond_1d4

    .line 2237
    sget v14, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v2, -0x1

    invoke-direct {v0, v13, v2, v14}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2238
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v13

    .line 2239
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v2, :cond_1ce

    .line 2240
    move-object/from16 v2, p6

    goto :goto_1ba

    .line 2242
    :cond_1ce
    nop

    .end local v2  # "r":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v5, v5, -0x1

    .line 2243
    move-object/from16 v2, p6

    goto :goto_1ba

    .line 2248
    .end local v5  # "j":I
    :cond_1d4
    :goto_1d4
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v14, -0x1

    invoke-direct {v0, v13, v14, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v13

    .line 2249
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v2, v2, v13

    .line 2250
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1e6

    .line 2251
    move/from16 v21, v6

    const/4 v14, 0x0

    goto/16 :goto_2a7

    .line 2253
    :cond_1e6
    if-nez v4, :cond_209

    .line 2254
    if-eqz v10, :cond_1ed

    .line 2255
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2257
    :cond_1ed
    const/4 v5, 0x1

    .line 2258
    .end local v10  # "needSep":Z
    .local v5, "needSep":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Historical broadcasts summary ["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    const/4 v4, 0x1

    move v10, v5

    .line 2261
    .end local v5  # "needSep":Z
    .restart local v10  # "needSep":Z
    :cond_209
    if-nez p5, :cond_217

    const/16 v5, 0x32

    if-lt v11, v5, :cond_217

    .line 2262
    const-string v5, "  ..."

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    move v2, v6

    goto/16 :goto_2b0

    .line 2265
    :cond_217
    add-int/lit8 v11, v11, 0x1

    .line 2266
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    move/from16 v16, v4

    const/4 v5, 0x1

    const/4 v14, 0x0

    .end local v4  # "printed":Z
    .local v16, "printed":Z
    invoke-virtual {v2, v14, v5, v5, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v4, v13

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v19, v4, v13

    move/from16 v21, v6

    .end local v6  # "lastIndex":I
    .local v21, "lastIndex":I
    sub-long v5, v17, v19

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2271
    const-string v5, " dispatch "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2272
    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v5, v5, v13

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v18, v4, v13

    sub-long v5, v5, v18

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2274
    const-string v4, " finish"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    const-string v4, "    enq="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    new-instance v4, Ljava/util/Date;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v5, v5, v13

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    const-string v4, " disp="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    new-instance v4, Ljava/util/Date;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v5, v5, v13

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    const-string v4, " fin="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    new-instance v4, Ljava/util/Date;

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v5, v5, v13

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2282
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_2a5

    .line 2283
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    .end local v2  # "intent":Landroid/content/Intent;
    .end local v4  # "bundle":Landroid/os/Bundle;
    :cond_2a5
    move/from16 v4, v16

    .end local v16  # "printed":Z
    .local v4, "printed":Z
    :goto_2a7
    move/from16 v2, v21

    .end local v21  # "lastIndex":I
    .local v2, "lastIndex":I
    if-ne v13, v2, :cond_2ac

    goto :goto_2b0

    :cond_2ac
    move v6, v2

    goto/16 :goto_1d4

    .line 2228
    .end local v2  # "lastIndex":I
    .local v5, "lastIndex":I
    :cond_2af
    move v2, v5

    .line 2288
    .end local v5  # "lastIndex":I
    .restart local v2  # "lastIndex":I
    :goto_2b0
    return v10

    .line 2226
    .end local v2  # "lastIndex":I
    .restart local v5  # "lastIndex":I
    :cond_2b1
    const/16 v16, 0x1

    move-object/from16 v2, p6

    move v12, v5

    move/from16 v9, v16

    move-object/from16 v5, v21

    goto/16 :goto_e2
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 274
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 275
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastHeadLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 277
    return-void

    .line 280
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastDispatcher;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 282
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 261
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 264
    return-void

    .line 267
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastHelper(Lcom/android/server/am/BroadcastRecord;)V

    .line 269
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .registers 25
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Ljava/lang/String;
    .param p4, "resultExtras"  # Landroid/os/Bundle;
    .param p5, "resultAbort"  # Z
    .param p6, "waitForServices"  # Z

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 505
    .local v3, "state":I
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 506
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 507
    .local v5, "finishTime":J
    iget-wide v7, v1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v7, v5, v7

    .line 508
    .local v7, "elapsed":J
    const/4 v9, 0x0

    iput v9, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 509
    const-string v10, "BroadcastQueue"

    if-nez v3, :cond_34

    .line 510
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "finishReceiver ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] called but state is IDLE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_34
    iget-boolean v11, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    if-eqz v11, :cond_4f

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_4f

    .line 513
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v11, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    cmp-long v11, v7, v11

    if-lez v11, :cond_4a

    .line 516
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_4f

    .line 519
    :cond_4a
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v11, v1}, Lcom/android/server/am/BroadcastQueue;->postActivityStartTokenRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 524
    :cond_4f
    :goto_4f
    iget v11, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v12, 0x1

    if-lez v11, :cond_5b

    .line 525
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v13, v12

    aput-wide v7, v11, v13

    .line 530
    :cond_5b
    iget-boolean v11, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v11, :cond_f8

    .line 531
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v11, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-lez v11, :cond_11b

    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v11, Lcom/android/server/am/BroadcastConstants;->SLOW_TIME:J

    cmp-long v11, v7, v13

    if-lez v11, :cond_11b

    .line 535
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v13, " br="

    if-eqz v11, :cond_cd

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v11

    if-nez v11, :cond_cd

    .line 537
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v11, :cond_aa

    .line 538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Broadcast receiver "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    sub-int/2addr v14, v12

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " was slow: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_aa
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_b8

    .line 542
    iget-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11, v13}, Lcom/android/server/am/BroadcastDispatcher;->startDeferring(I)V

    goto :goto_11b

    .line 544
    :cond_b8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "finish receiver curApp is null? "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 547
    :cond_cd
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v11, :cond_11b

    .line 548
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Core uid "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " receiver was slow but not deferring: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 554
    :cond_f8
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v11, :cond_11b

    .line 555
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finished broadcast "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is exempt from deferral policy"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_11b
    :goto_11b
    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 561
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_138

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_138

    .line 563
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 565
    :cond_138
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v13, :cond_142

    .line 566
    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v13, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object v11, v13, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 568
    :cond_142
    iput-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 569
    iput-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 570
    iput-object v11, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 571
    iput-object v11, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 573
    move/from16 v13, p2

    iput v13, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 574
    move-object/from16 v14, p3

    iput-object v14, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 575
    move-object/from16 v15, p4

    iput-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 576
    if-eqz v2, :cond_167

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v17, 0x8000000

    and-int v12, v12, v17

    if-nez v12, :cond_167

    .line 577
    iput-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto :goto_169

    .line 579
    :cond_167
    iput-boolean v9, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 584
    :goto_169
    if-eqz p6, :cond_1e4

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v12, :cond_1e4

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v12, v12, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v12, :cond_1e4

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v12, v12, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 585
    invoke-virtual {v12}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v12

    if-ne v12, v1, :cond_1e4

    .line 587
    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_19c

    .line 588
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 589
    .local v11, "obj":Ljava/lang/Object;
    instance-of v12, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_199

    move-object v12, v11

    check-cast v12, Landroid/content/pm/ActivityInfo;

    goto :goto_19a

    :cond_199
    const/4 v12, 0x0

    :goto_19a
    move-object v11, v12

    .line 590
    .local v11, "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_19d

    .line 591
    .end local v11  # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_19c
    const/4 v11, 0x0

    .line 594
    .restart local v11  # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_19d
    if-eqz v4, :cond_1b8

    if-eqz v11, :cond_1b8

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v12, v9, :cond_1b8

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 596
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v9, 0x0

    goto :goto_1e4

    .line 601
    :cond_1b8
    :goto_1b8
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v9, v12}, Lcom/android/server/am/ActiveServices;->hasBackgroundServicesLocked(I)Z

    move-result v9

    if-eqz v9, :cond_1e3

    .line 602
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delay finish: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v9, 0x4

    iput v9, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 604
    const/4 v9, 0x0

    return v9

    .line 601
    :cond_1e3
    const/4 v9, 0x0

    .line 609
    .end local v11  # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_1e4
    :goto_1e4
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 614
    const/4 v10, 0x1

    if-eq v3, v10, :cond_1ed

    const/4 v11, 0x3

    if-ne v3, v11, :cond_1ee

    :cond_1ed
    move v9, v10

    :cond_1ee
    return v9
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .registers 4
    .param p1, "receiver"  # Landroid/os/IBinder;

    .line 472
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 473
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_d

    .line 474
    return-object v0

    .line 476
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method isIdle()Z
    .registers 2

    .line 2077
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
    .param p1, "pid"  # I

    .line 255
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final isSignaturePerm([Ljava/lang/String;)Z
    .registers 9
    .param p1, "perms"  # [Ljava/lang/String;

    .line 1010
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1011
    return v0

    .line 1013
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1014
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_26

    .line 1016
    :try_start_d
    aget-object v4, p1, v2

    const-string v5, "android"

    invoke-interface {v1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 1017
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-nez v4, :cond_18

    .line 1020
    return v0

    .line 1022
    :cond_18
    iget v5, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_24

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_20

    .line 1027
    return v0

    .line 1031
    .end local v4  # "pi":Landroid/content/pm/PermissionInfo;
    :cond_20
    nop

    .line 1014
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1029
    :catch_24
    move-exception v3

    .line 1030
    .local v3, "e":Landroid/os/RemoteException;
    return v0

    .line 1033
    .end local v2  # "i":I
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_26
    return v3
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 13
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 2043
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2044
    .local v0, "logIndex":I
    const/16 v2, 0x7549

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ltz v0, :cond_8b

    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_8b

    .line 2045
    iget-object v8, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2046
    .local v8, "curReceiver":Ljava/lang/Object;
    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_54

    .line 2047
    move-object v2, v8

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .line 2048
    .local v2, "bf":Lcom/android/server/am/BroadcastFilter;
    const/16 v9, 0x7548

    new-array v7, v7, [Ljava/lang/Object;

    iget v10, v2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    .line 2049
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2050
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    .line 2048
    invoke-static {v9, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2051
    .end local v2  # "bf":Lcom/android/server/am/BroadcastFilter;
    goto :goto_8a

    .line 2052
    :cond_54
    move-object v9, v8

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 2053
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2054
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    .line 2055
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 2053
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2057
    .end local v8  # "curReceiver":Ljava/lang/Object;
    .end local v9  # "ri":Landroid/content/pm/ResolveInfo;
    :goto_8a
    goto :goto_cd

    .line 2058
    :cond_8b
    if-gez v0, :cond_a3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BroadcastQueue"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_a3
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, -0x1

    .line 2061
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2062
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2063
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    const-string v1, "NONE"

    aput-object v1, v7, v3

    .line 2060
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2066
    :goto_cd
    return-void
.end method

.method performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 22
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "receiver"  # Landroid/content/IIntentReceiver;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resultCode"  # I
    .param p5, "data"  # Ljava/lang/String;
    .param p6, "extras"  # Landroid/os/Bundle;
    .param p7, "ordered"  # Z
    .param p8, "sticky"  # Z
    .param p9, "sendingUser"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    move-object v1, p1

    if-eqz v1, :cond_69

    .line 636
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_60

    .line 640
    :try_start_7
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 641
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v11

    .line 640
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
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_20

    .line 655
    move-object v3, p0

    goto :goto_6d

    .line 647
    :catch_20
    move-exception v0

    move-object v2, v0

    .line 649
    .local v2, "ex":Landroid/os/RemoteException;
    move-object v3, p0

    iget-object v4, v3, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 650
    const-string v0, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t deliver broadcast to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "). Crashing it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v0, "can\'t deliver broadcast"

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 653
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 654
    throw v2

    .line 653
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 658
    .end local v2  # "ex":Landroid/os/RemoteException;
    :cond_60
    move-object v3, p0

    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "app.thread must not be null"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_69
    move-object v3, p0

    invoke-interface/range {p2 .. p9}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 664
    :goto_6d
    return-void
.end method

.method final processNextBroadcast(Z)V
    .registers 4
    .param p1, "fromMsg"  # Z

    .line 1037
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcastLocked(ZZ)V

    .line 1039
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1040
    return-void

    .line 1039
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final processNextBroadcastLocked(ZZ)V
    .registers 55
    .param p1, "fromMsg"  # Z
    .param p2, "skipOomAdj"  # Z

    .line 1045
    move-object/from16 v11, p0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 1047
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parallel broadcasts; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    .line 1048
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->describeStateLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_3b
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1052
    const/4 v12, 0x0

    if-eqz p1, :cond_45

    .line 1053
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 1057
    :cond_45
    :goto_45
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v13, 0x40

    const/4 v15, 0x1

    if-lez v0, :cond_120

    .line 1058
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1059
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1062
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1063
    nop

    .line 1064
    invoke-direct {v11, v0, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1063
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1066
    nop

    .line 1067
    invoke-direct {v11, v0, v15}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1066
    invoke-static {v13, v14, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1071
    :cond_82
    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1074
    .local v1, "N":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_b9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BDC-Processing parallel broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_b9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ba
    if-ge v2, v1, :cond_f7

    .line 1078
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1079
    .local v3, "target":Ljava/lang/Object;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_ee

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering non-ordered on ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] to registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_ee
    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {v11, v0, v4, v12, v2}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1077
    .end local v3  # "target":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 1084
    .end local v2  # "i":I
    :cond_f7
    invoke-direct {v11, v0}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1085
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_11e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with parallel broadcast ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v1  # "N":I
    :cond_11e
    goto/16 :goto_45

    .line 1094
    .end local v0  # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_120
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_1d5

    .line 1095
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_14e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_14e
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_17b

    .line 1101
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 1102
    :try_start_15b
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1104
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_174

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v2

    if-eqz v2, :cond_172

    goto :goto_174

    :cond_172
    move v2, v12

    goto :goto_175

    :cond_174
    :goto_174
    move v2, v15

    :goto_175
    move v0, v2

    .line 1105
    .local v0, "isDead":Z
    monitor-exit v1

    goto :goto_19e

    .end local v0  # "isDead":Z
    :catchall_178
    move-exception v0

    monitor-exit v1
    :try_end_17a
    .catchall {:try_start_15b .. :try_end_17a} :catchall_178

    throw v0

    .line 1107
    :cond_17b
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

    .line 1109
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_19c

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v1, :cond_19a

    goto :goto_19c

    :cond_19a
    move v1, v12

    goto :goto_19d

    :cond_19c
    :goto_19c
    move v1, v15

    :goto_19d
    move v0, v1

    .line 1111
    .local v0, "isDead":Z
    :goto_19e
    if-nez v0, :cond_1a1

    .line 1113
    return-void

    .line 1115
    :cond_1a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending app  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died before responding to broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iput v12, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1119
    iget v2, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 1120
    iput-object v10, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1124
    .end local v0  # "isDead":Z
    :cond_1d5
    const/4 v0, 0x0

    move/from16 v16, v0

    .line 1127
    .local v16, "looped":Z
    :goto_1d8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1128
    .local v8, "now":J
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/BroadcastDispatcher;->getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;

    move-result-object v7

    .line 1130
    .local v7, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v7, :cond_207

    .line 1132
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v12}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    .line 1133
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1134
    if-eqz v16, :cond_1f8

    .line 1138
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1142
    :cond_1f8
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-boolean v0, v0, Lcom/android/server/am/UserController;->mBootCompleted:Z

    if-eqz v0, :cond_206

    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_206

    .line 1143
    iput-boolean v12, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    .line 1146
    :cond_206
    return-void

    .line 1149
    :cond_207
    const/4 v0, 0x0

    .line 1158
    .local v0, "forceReceive":Z
    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v1, :cond_213

    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_214

    :cond_213
    move v1, v12

    :goto_214
    move v6, v1

    .line 1159
    .local v6, "numReceivers":I
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-wide/16 v17, 0x0

    if-eqz v1, :cond_29b

    iget-boolean v1, v7, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v1, :cond_29b

    iget-wide v1, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_29b

    .line 1160
    if-lez v6, :cond_29b

    iget-wide v1, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v3, 0x2

    iget-object v5, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v5, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    mul-long/2addr v13, v3

    int-to-long v3, v6

    mul-long/2addr v13, v3

    add-long/2addr v1, v13

    cmp-long v1, v8, v1

    if-lez v1, :cond_29b

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hung broadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] discarded after timeout failure: now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " dispatchTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v7, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " numReceivers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nextReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v11, v12}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 1172
    const/4 v0, 0x1

    .line 1173
    iput v12, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    move v13, v0

    goto :goto_29c

    .line 1177
    :cond_29b
    move v13, v0

    .end local v0  # "forceReceive":Z
    .local v13, "forceReceive":Z
    :goto_29c
    iget v0, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v0, :cond_2cd

    .line 1178
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processNextBroadcast("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called when not idle (state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_2cc
    return-void

    .line 1186
    :cond_2cd
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v14, 0x2

    const/high16 v20, 0x40000000  # 2.0f

    if-eqz v0, :cond_456

    iget v0, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v6, :cond_456

    iget-boolean v0, v7, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v0, :cond_456

    if-eqz v13, :cond_2e0

    goto/16 :goto_456

    .line 1261
    :cond_2e0
    iget-boolean v0, v7, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    if-nez v0, :cond_452

    .line 1262
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v0

    .line 1263
    .local v0, "receiverUid":I
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastDispatcher;->isDeferringLocked(I)Z

    move-result v1

    if-eqz v1, :cond_452

    .line 1264
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_329

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next receiver in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is under deferral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_329
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/2addr v1, v15

    if-ne v1, v6, :cond_355

    .line 1273
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_34d

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sole receiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is under deferral; setting aside and proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_34d
    move-object v1, v7

    .line 1278
    .local v1, "defer":Lcom/android/server/am/BroadcastRecord;
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v7}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_445

    .line 1285
    .end local v1  # "defer":Lcom/android/server/am/BroadcastRecord;
    :cond_355
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/BroadcastRecord;->splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1286
    .restart local v1  # "defer":Lcom/android/server/am/BroadcastRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_3c4

    .line 1287
    const-string v2, "BroadcastQueue"

    const-string v3, "Post split:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string v2, "BroadcastQueue"

    const-string v3, "Original broadcast receivers:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_36e
    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_395

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    add-int/lit8 v2, v2, 0x1

    goto :goto_36e

    .line 1292
    .end local v2  # "i":I
    :cond_395
    const-string v2, "BroadcastQueue"

    const-string v3, "Split receivers:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_39d
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c4

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    add-int/lit8 v2, v2, 0x1

    goto :goto_39d

    .line 1298
    .end local v2  # "i":I
    :cond_3c4
    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v2, :cond_445

    .line 1299
    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1300
    .local v2, "token":I
    if-nez v2, :cond_3f8

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->nextSplitTokenLocked()I

    move-result v3

    iput v3, v1, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 1303
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v4, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v3, :cond_445

    .line 1305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast needs split refcount; using new token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_445

    .line 1311
    :cond_3f8
    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1312
    .local v3, "curCount":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_41a

    .line 1313
    if-nez v3, :cond_41a

    .line 1314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split refcount is zero with token for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_41a
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_445

    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New split count for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    .end local v2  # "token":I
    .end local v3  # "curCount":I
    :cond_445
    :goto_445
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/BroadcastDispatcher;->addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V

    .line 1327
    const/4 v2, 0x0

    .line 1328
    .end local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v3, 0x1

    .line 1329
    .end local v16  # "looped":Z
    .local v3, "looped":Z
    move-object v8, v2

    move/from16 v16, v3

    move-object v15, v10

    goto/16 :goto_5f5

    .line 1332
    .end local v0  # "receiverUid":I
    .end local v1  # "defer":Lcom/android/server/am/BroadcastRecord;
    .end local v2  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v3  # "looped":Z
    .end local v6  # "numReceivers":I
    .end local v8  # "now":J
    .end local v13  # "forceReceive":Z
    .restart local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v16  # "looped":Z
    :cond_452
    move-object v8, v7

    move-object v15, v10

    goto/16 :goto_5f5

    .line 1189
    .restart local v6  # "numReceivers":I
    .restart local v8  # "now":J
    .restart local v13  # "forceReceive":Z
    :cond_456
    :goto_456
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_58a

    .line 1190
    const/4 v0, 0x1

    .line 1194
    .local v0, "sendResult":Z
    iget v1, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    if-eqz v1, :cond_4de

    .line 1195
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v2, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sub-int/2addr v1, v15

    .line 1196
    .local v1, "newCount":I
    if-nez v1, :cond_49c

    .line 1198
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_494

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast completion for split token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1201
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1199
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_494
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4de

    .line 1207
    :cond_49c
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_4d3

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result refcount now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for split token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1210
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - not sending completion yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_4d3
    const/4 v0, 0x0

    .line 1214
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mSplitRefcounts:Landroid/util/SparseIntArray;

    iget v3, v7, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    move/from16 v21, v0

    goto :goto_4e0

    .line 1217
    .end local v1  # "newCount":I
    :cond_4de
    :goto_4de
    move/from16 v21, v0

    .end local v0  # "sendResult":Z
    .local v21, "sendResult":Z
    :goto_4e0
    if-eqz v21, :cond_583

    .line 1219
    :try_start_4e2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z
    :try_end_4e4
    .catch Landroid/os/RemoteException; {:try_start_4e2 .. :try_end_4e4} :catch_557

    if-eqz v0, :cond_51f

    .line 1220
    :try_start_4e6
    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing broadcast ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1221
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_516
    .catch Landroid/os/RemoteException; {:try_start_4e6 .. :try_end_516} :catch_517

    goto :goto_51f

    .line 1229
    :catch_517
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v28, v8

    move-object v15, v10

    goto :goto_55e

    .line 1223
    :cond_51f
    :goto_51f
    :try_start_51f
    iget-object v2, v7, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v7, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget v5, v7, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;
    :try_end_530
    .catch Landroid/os/RemoteException; {:try_start_51f .. :try_end_530} :catch_557

    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_534
    iget v10, v7, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_536
    .catch Landroid/os/RemoteException; {:try_start_534 .. :try_end_536} :catch_54f

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    move/from16 v26, v6

    .end local v6  # "numReceivers":I
    .local v26, "numReceivers":I
    move-object v6, v0

    move-object v14, v7

    .end local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .local v14, "r":Lcom/android/server/am/BroadcastRecord;
    move-object/from16 v7, v25

    move-wide/from16 v28, v8

    .end local v8  # "now":J
    .local v28, "now":J
    move/from16 v8, v22

    move/from16 v9, v23

    const/4 v15, 0x0

    :try_start_547
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1228
    iput-object v15, v14, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_54c
    .catch Landroid/os/RemoteException; {:try_start_547 .. :try_end_54c} :catch_54d

    .line 1234
    goto :goto_590

    .line 1229
    :catch_54d
    move-exception v0

    goto :goto_55e

    .end local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v26  # "numReceivers":I
    .end local v28  # "now":J
    .restart local v6  # "numReceivers":I
    .restart local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8  # "now":J
    :catch_54f
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v28, v8

    const/4 v15, 0x0

    goto :goto_55e

    :catch_557
    move-exception v0

    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v28, v8

    move-object v15, v10

    .line 1230
    .end local v6  # "numReceivers":I
    .end local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8  # "now":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26  # "numReceivers":I
    .restart local v28  # "now":J
    :goto_55e
    iput-object v15, v14, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] sending broadcast result of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_590

    .line 1217
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v26  # "numReceivers":I
    .end local v28  # "now":J
    .restart local v6  # "numReceivers":I
    .restart local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8  # "now":J
    :cond_583
    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v28, v8

    move-object v15, v10

    .end local v6  # "numReceivers":I
    .end local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8  # "now":J
    .restart local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26  # "numReceivers":I
    .restart local v28  # "now":J
    goto :goto_590

    .line 1189
    .end local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v21  # "sendResult":Z
    .end local v26  # "numReceivers":I
    .end local v28  # "now":J
    .restart local v6  # "numReceivers":I
    .restart local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v8  # "now":J
    :cond_58a
    move/from16 v26, v6

    move-object v14, v7

    move-wide/from16 v28, v8

    move-object v15, v10

    .line 1238
    .end local v6  # "numReceivers":I
    .end local v7  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v8  # "now":J
    .restart local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v26  # "numReceivers":I
    .restart local v28  # "now":J
    :goto_590
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_59b

    const-string v0, "BroadcastQueue"

    const-string v1, "Cancelling BROADCAST_TIMEOUT_MSG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_59b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 1241
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_5b8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished with ordered broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_5b8
    invoke-direct {v11, v14}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1246
    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5eb

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5eb

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1247
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v20

    if-nez v0, :cond_5eb

    .line 1249
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v14, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iget v5, v14, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iget-wide v6, v14, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, v14, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1252
    :cond_5eb
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0, v14}, Lcom/android/server/am/BroadcastDispatcher;->retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1253
    const/4 v0, 0x0

    .line 1254
    .end local v14  # "r":Lcom/android/server/am/BroadcastRecord;
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v1, 0x1

    .line 1255
    .end local v16  # "looped":Z
    .local v1, "looped":Z
    move-object v8, v0

    move/from16 v16, v1

    .line 1332
    .end local v0  # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v1  # "looped":Z
    .end local v13  # "forceReceive":Z
    .end local v26  # "numReceivers":I
    .end local v28  # "now":J
    .local v8, "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v16  # "looped":Z
    :goto_5f5
    if-eqz v8, :cond_1283

    .line 1335
    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move v9, v0

    .line 1339
    .local v9, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1340
    if-nez v9, :cond_676

    .line 1341
    iget-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1344
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mLogLatencyMetrics:Z

    if-eqz v0, :cond_61e

    .line 1345
    const/16 v0, 0x8e

    iget-wide v1, v8, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v3, v8, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/util/StatsLog;->write(IJ)I

    .line 1350
    :cond_61e
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_63f

    .line 1351
    nop

    .line 1352
    invoke-direct {v11, v8, v12}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1353
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1351
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1354
    nop

    .line 1355
    const/4 v3, 0x1

    invoke-direct {v11, v8, v3}, Lcom/android/server/am/BroadcastQueue;->createBroadcastTraceTitle(Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1354
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1360
    :cond_63f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_676

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BDC-Processing ordered broadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 1361
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_676
    iget-boolean v0, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_6b0

    .line 1364
    iget-wide v0, v8, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    add-long/2addr v0, v2

    .line 1365
    .local v0, "timeoutTime":J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_6ad

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Submitting BROADCAST_TIMEOUT_MSG ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_6ad
    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1371
    .end local v0  # "timeoutTime":J
    :cond_6b0
    iget-object v10, v8, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1372
    .local v10, "brOptions":Landroid/app/BroadcastOptions;
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1374
    .local v13, "nextReceiver":Ljava/lang/Object;
    instance-of v0, v13, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_74e

    .line 1377
    move-object v0, v13

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1378
    .local v0, "filter":Lcom/android/server/am/BroadcastFilter;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_6eb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering ordered ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] to registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_6eb
    iget-boolean v1, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v11, v8, v0, v1, v9}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    .line 1383
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v1, :cond_718

    iget-boolean v1, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_6f9

    goto :goto_718

    .line 1392
    :cond_6f9
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v1, :cond_704

    .line 1393
    iget-object v1, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v1, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1397
    :cond_704
    if-eqz v10, :cond_74d

    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-lez v1, :cond_74d

    .line 1398
    iget v1, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 1399
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v2

    .line 1398
    invoke-virtual {v11, v1, v2, v3, v8}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    goto :goto_74d

    .line 1386
    :cond_718
    :goto_718
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_748

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quick finishing ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: ordered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " receiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_748
    iput v12, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1402
    :cond_74d
    :goto_74d
    return-void

    .line 1408
    .end local v0  # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_74e
    move-object v14, v13

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1410
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 1414
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 1415
    .local v0, "skip":Z
    if-eqz v10, :cond_77d

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1417
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getMinManifestReceiverApiLevel()I

    move-result v2

    if-lt v1, v2, :cond_77c

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1419
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getMaxManifestReceiverApiLevel()I

    move-result v2

    if-le v1, v2, :cond_77d

    .line 1420
    :cond_77c
    const/4 v0, 0x1

    .line 1422
    :cond_77d
    if-nez v0, :cond_7dc

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1423
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1422
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7dc

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association not allowed: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1425
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1424
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v0, 0x1

    .line 1430
    :cond_7dc
    if-nez v0, :cond_84b

    .line 1431
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    invoke-virtual/range {v28 .. v33}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    move v0, v1

    .line 1433
    if-eqz v0, :cond_84b

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall blocked: broadcasting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1435
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1434
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_84b
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    .line 1443
    .local v1, "perm":I
    const/4 v2, -0x1

    if-nez v0, :cond_919

    if-eqz v1, :cond_919

    .line 1444
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_8c3

    .line 1445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1446
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1445
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_915

    .line 1452
    :cond_8c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1453
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1452
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_915
    const/4 v0, 0x1

    move v3, v0

    goto/16 :goto_993

    .line 1460
    :cond_919
    if-nez v0, :cond_992

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_992

    .line 1461
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 1462
    .local v3, "opCode":I
    if-eq v3, v2, :cond_992

    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v5, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v6, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1463
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_992

    .line 1465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appop Denial: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1466
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires appop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1469
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to registered receiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1465
    const-string v5, "BroadcastQueue"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v0, 0x1

    move v3, v0

    goto :goto_993

    .line 1476
    .end local v3  # "opCode":I
    :cond_992
    move v3, v0

    .end local v0  # "skip":Z
    .local v3, "skip":Z
    :goto_993
    const/16 v4, 0x3e8

    if-nez v3, :cond_a90

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v4, :cond_a90

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_a90

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_a90

    .line 1478
    const/4 v0, 0x0

    move v5, v1

    move v1, v0

    .local v1, "i":I
    .local v5, "perm":I
    :goto_9ab
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_a8e

    .line 1479
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v6, v0, v1

    .line 1481
    .local v6, "requiredPermission":Ljava/lang/String;
    :try_start_9b4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1485
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1482
    invoke-interface {v0, v6, v15, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_9cc
    .catch Landroid/os/RemoteException; {:try_start_9b4 .. :try_end_9cc} :catch_9ce

    .line 1488
    .end local v5  # "perm":I
    .local v0, "perm":I
    move v5, v0

    goto :goto_9d1

    .line 1486
    .end local v0  # "perm":I
    .restart local v5  # "perm":I
    :catch_9ce
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    move v5, v4

    .line 1489
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_9d1
    if-eqz v5, :cond_a1c

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: receiving "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to sender "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    const-string v4, "BroadcastQueue"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v3, 0x1

    .line 1497
    move v12, v5

    goto/16 :goto_a91

    .line 1499
    :cond_a1c
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 1500
    .local v0, "appOp":I
    if-eq v0, v2, :cond_a86

    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v4, :cond_a86

    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1501
    invoke-virtual {v4, v0, v15, v12}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a86

    .line 1504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Appop Denial: receiving "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " requires appop "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " due to sender "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (uid "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1504
    const-string v12, "BroadcastQueue"

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v3, 0x1

    .line 1512
    move v12, v5

    goto :goto_a91

    .line 1478
    .end local v0  # "appOp":I
    .end local v6  # "requiredPermission":Ljava/lang/String;
    :cond_a86
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x3e8

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_9ab

    :cond_a8e
    move v12, v5

    goto :goto_a91

    .line 1516
    .end local v5  # "perm":I
    .local v1, "perm":I
    :cond_a90
    move v12, v1

    .end local v1  # "perm":I
    .local v12, "perm":I
    :goto_a91
    if-nez v3, :cond_af9

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v0, v2, :cond_af9

    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1517
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_af9

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires appop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 1523
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/4 v3, 0x1

    .line 1528
    :cond_af9
    const/4 v1, 0x0

    .line 1530
    .local v1, "isSingleton":Z
    :try_start_afa
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_b10
    .catch Ljava/lang/SecurityException; {:try_start_afa .. :try_end_b10} :catch_b13

    move v1, v0

    .line 1536
    move v15, v1

    goto :goto_b1f

    .line 1533
    :catch_b13
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v3, 0x1

    move v15, v1

    .line 1537
    .end local v0  # "e":Ljava/lang/SecurityException;
    .end local v1  # "isSingleton":Z
    .local v15, "isSingleton":Z
    :goto_b1f
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v20

    if-eqz v0, :cond_b5a

    .line 1538
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b5a

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v3, 0x1

    .line 1548
    :cond_b5a
    if-nez v3, :cond_bae

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_bae

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_bae

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant App Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") Instant Apps do not support manifest receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1550
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v3, 0x1

    .line 1558
    :cond_bae
    if-nez v3, :cond_c05

    iget-boolean v0, v8, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    if-eqz v0, :cond_c05

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_c05

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_c05

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant App Denial: receiving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires receiver have visibleToInstantApps set due to sender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1561
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v3, 0x1

    .line 1569
    :cond_c05
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c41

    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_c41

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping deliver ordered ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process crashing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/4 v3, 0x1

    .line 1575
    :cond_c41
    if-nez v3, :cond_cad

    .line 1576
    const/4 v1, 0x0

    .line 1578
    .local v1, "isAvailable":Z
    :try_start_c44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1580
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1578
    invoke-interface {v0, v2, v4}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c5a
    .catch Ljava/lang/Exception; {:try_start_c44 .. :try_end_c5a} :catch_c5c

    move v1, v0

    .line 1585
    goto :goto_c77

    .line 1581
    :catch_c5c
    move-exception v0

    .line 1583
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getting recipient info for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BroadcastQueue"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c77
    if-nez v1, :cond_cad

    .line 1587
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_caa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping delivery to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : package no longer available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_caa
    const/4 v3, 0x1

    move v0, v3

    goto :goto_cae

    .line 1597
    .end local v1  # "isAvailable":Z
    :cond_cad
    move v0, v3

    .end local v3  # "skip":Z
    .local v0, "skip":Z
    :goto_cae
    iget-object v6, v8, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1598
    .local v6, "callerPkg":Ljava/lang/String;
    const-string v1, ""

    .line 1599
    .local v1, "calleePkg":Ljava/lang/String;
    const-string v2, ""

    .line 1600
    .local v2, "startProcess":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1601
    .local v3, "calleeUid":I
    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_cd2

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_cd2

    .line 1602
    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1603
    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1604
    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v5, v1

    move-object v4, v2

    goto :goto_cd4

    .line 1606
    :cond_cd2
    move-object v5, v1

    move-object v4, v2

    .end local v1  # "calleePkg":Ljava/lang/String;
    .end local v2  # "startProcess":Ljava/lang/String;
    .local v4, "startProcess":Ljava/lang/String;
    .local v5, "calleePkg":Ljava/lang/String;
    :goto_cd4
    invoke-static {}, Landroid/os/Binder;->getRealCallingPid()I

    move-result v2

    .line 1608
    .local v2, "realCallingPid":I
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v20, v7

    .end local v7  # "component":Landroid/content/ComponentName;
    .local v20, "component":Landroid/content/ComponentName;
    iget-object v7, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v33, v1

    .line 1609
    .local v33, "broadcast":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1610
    .local v1, "isIntercept":Z
    const-string v7, ""

    .line 1611
    .local v7, "calleeClass":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    if-eqz v21, :cond_cf4

    .line 1612
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 1615
    :cond_cf4
    const/16 v21, 0x0

    .line 1616
    .local v21, "isRunning":Z
    move/from16 v23, v1

    .end local v1  # "isIntercept":Z
    .local v23, "isIntercept":Z
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v25, v12

    .end local v12  # "perm":I
    .local v25, "perm":I
    iget-object v12, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v26, v13

    .end local v13  # "nextReceiver":Ljava/lang/Object;
    .local v26, "nextReceiver":Ljava/lang/Object;
    iget-object v13, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v42, v10

    const/4 v10, 0x0

    .end local v10  # "brOptions":Landroid/app/BroadcastOptions;
    .local v42, "brOptions":Landroid/app/BroadcastOptions;
    invoke-virtual {v1, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 1618
    .local v12, "appForIntercept":Lcom/android/server/am/ProcessRecord;
    if-eqz v12, :cond_d18

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_d18

    .line 1619
    const/4 v1, 0x1

    move/from16 v21, v1

    .line 1622
    :cond_d18
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v1, v10, v6}, Lcom/android/server/am/ActivityManagerService;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v10

    .line 1623
    .local v10, "isTop":Z
    nop

    .line 1632
    invoke-static {}, Lcom/android/server/hips/intercept/AutoRunInterception;->getInstance()Lcom/android/server/hips/intercept/AutoRunInterception;

    move-result-object v36

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v37

    .line 1634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    const/16 v40, 0x0

    .line 1623
    const-string v34, "broadcast"

    move/from16 v28, v10

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move/from16 v31, v3

    move-object/from16 v32, v4

    move/from16 v35, v2

    move/from16 v41, v21

    invoke-static/range {v28 .. v41}, Lcom/android/server/hips/intercept/Interception;->isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z

    move-result v13

    .line 1638
    .end local v23  # "isIntercept":Z
    .local v13, "isIntercept":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v12

    .end local v12  # "appForIntercept":Lcom/android/server/am/ProcessRecord;
    .local v23, "appForIntercept":Lcom/android/server/am/ProcessRecord;
    const-string v12, "INTERCEPT "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " call "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from broadcast "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " pid "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " uid "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " fg "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isIntercept "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1639
    .local v12, "events":Ljava/lang/String;
    const v1, 0xdc3372

    invoke-static {v1, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1640
    invoke-static {v5}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->interceptForSupperModePermissionControl(Ljava/lang/String;)Z

    move-result v28

    .line 1642
    .local v28, "isInterceptSuperMode":Z
    invoke-direct {v11, v8, v14, v4, v13}, Lcom/android/server/am/BroadcastQueue;->hook_StaticBroadcast(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)Z

    .line 1644
    if-eqz v13, :cond_dc5

    .line 1645
    invoke-virtual {v11, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1646
    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v29, v4

    .end local v4  # "startProcess":Ljava/lang/String;
    .local v29, "startProcess":Ljava/lang/String;
    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v30, v5

    .end local v5  # "calleePkg":Ljava/lang/String;
    .local v30, "calleePkg":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v31, v6

    .end local v6  # "callerPkg":Ljava/lang/String;
    .local v31, "callerPkg":Ljava/lang/String;
    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/16 v17, 0x0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v32, v2

    .end local v2  # "realCallingPid":I
    .local v32, "realCallingPid":I
    move-object v2, v8

    move/from16 v34, v3

    .end local v3  # "calleeUid":I
    .local v34, "calleeUid":I
    move/from16 v3, v18

    move-object/from16 v35, v20

    move-object/from16 v20, v7

    .end local v7  # "calleeClass":Ljava/lang/String;
    .local v20, "calleeClass":Ljava/lang/String;
    .local v35, "component":Landroid/content/ComponentName;
    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1649
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1650
    return-void

    .line 1658
    .end local v29  # "startProcess":Ljava/lang/String;
    .end local v30  # "calleePkg":Ljava/lang/String;
    .end local v31  # "callerPkg":Ljava/lang/String;
    .end local v32  # "realCallingPid":I
    .end local v34  # "calleeUid":I
    .end local v35  # "component":Landroid/content/ComponentName;
    .restart local v2  # "realCallingPid":I
    .restart local v3  # "calleeUid":I
    .restart local v4  # "startProcess":Ljava/lang/String;
    .restart local v5  # "calleePkg":Ljava/lang/String;
    .restart local v6  # "callerPkg":Ljava/lang/String;
    .restart local v7  # "calleeClass":Ljava/lang/String;
    .local v20, "component":Landroid/content/ComponentName;
    :cond_dc5
    move/from16 v32, v2

    move/from16 v34, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v35, v20

    move-object/from16 v20, v7

    .end local v2  # "realCallingPid":I
    .end local v3  # "calleeUid":I
    .end local v4  # "startProcess":Ljava/lang/String;
    .end local v5  # "calleePkg":Ljava/lang/String;
    .end local v6  # "callerPkg":Ljava/lang/String;
    .end local v7  # "calleeClass":Ljava/lang/String;
    .local v20, "calleeClass":Ljava/lang/String;
    .restart local v29  # "startProcess":Ljava/lang/String;
    .restart local v30  # "calleePkg":Ljava/lang/String;
    .restart local v31  # "callerPkg":Ljava/lang/String;
    .restart local v32  # "realCallingPid":I
    .restart local v34  # "calleeUid":I
    .restart local v35  # "component":Landroid/content/ComponentName;
    if-nez v0, :cond_dea

    .line 1659
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1660
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1659
    invoke-direct {v11, v8, v1, v2}, Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_dea

    .line 1662
    const/4 v0, 0x1

    .line 1668
    :cond_dea
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1670
    .local v7, "receiverUid":I
    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_e0d

    if-eqz v15, :cond_e0d

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1671
    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1

    if-eqz v1, :cond_e0d

    .line 1672
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1674
    :cond_e0d
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1675
    .local v6, "targetProcess":Ljava/lang/String;
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 1678
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_ed3

    .line 1679
    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v47, -0x1

    const/16 v48, 0x1

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v43, v1

    move/from16 v44, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    invoke-virtual/range {v43 .. v50}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v1

    .line 1682
    .local v1, "allowed":I
    if-eqz v1, :cond_ed3

    .line 1687
    const/4 v2, 0x3

    if-ne v1, v2, :cond_e71

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background execution disabled: receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    invoke-virtual/range {v35 .. v35}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1688
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v0, 0x1

    goto :goto_ed3

    .line 1692
    :cond_e71
    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_e9f

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1693
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_ed3

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1694
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ed3

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1695
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_ed3

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 1697
    invoke-virtual {v11, v2}, Lcom/android/server/am/BroadcastQueue;->isSignaturePerm([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ed3

    .line 1698
    :cond_e9f
    iget-object v2, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1699
    invoke-virtual/range {v35 .. v35}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1698
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background execution not allowed: receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual/range {v35 .. v35}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1700
    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v0, 0x1

    .line 1708
    .end local v1  # "allowed":I
    :cond_ed3
    :goto_ed3
    if-nez v0, :cond_f26

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f26

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1710
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_f26

    .line 1712
    const/4 v0, 0x1

    .line 1713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping delivery to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : user is not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_f26
    if-nez v0, :cond_102a

    .line 1721
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1722
    .local v1, "actInfoForFreeze":Landroid/content/pm/ActivityInfo;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1723
    .local v2, "targetProcessForFreeze":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1725
    .local v3, "receiverUidForFreeze":I
    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v36, v6

    const/16 v6, 0x3e8

    .end local v6  # "targetProcess":Ljava/lang/String;
    .local v36, "targetProcess":Ljava/lang/String;
    if-eq v4, v6, :cond_f4b

    if-eqz v15, :cond_f4b

    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1726
    invoke-virtual {v4, v6, v3}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_f4b

    .line 1727
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1729
    :cond_f4b
    iget-object v4, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1  # "actInfoForFreeze":Landroid/content/pm/ActivityInfo;
    .local v19, "actInfoForFreeze":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v2, v6, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 1731
    .local v4, "appForFreeze":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_1027

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1027

    .line 1732
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1024

    .line 1733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeze: Skipping deliver ordered ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": process freezing"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BroadcastQueue"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v0, 0x1

    .line 1736
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v1

    .line 1737
    .local v1, "flag":I
    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-eqz v6, :cond_fa1

    const/4 v6, 0x1

    goto :goto_fa2

    :cond_fa1
    const/4 v6, 0x0

    .line 1738
    .local v6, "isFromNotification":Z
    :goto_fa2
    move/from16 v37, v0

    .end local v0  # "skip":Z
    .local v37, "skip":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v2

    .end local v2  # "targetProcessForFreeze":Ljava/lang/String;
    .local v38, "targetProcessForFreeze":Ljava/lang/String;
    const-string/jumbo v2, "r.intent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isFromNotification = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    if-nez v6, :cond_fd9

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_102e

    .line 1740
    :cond_fd9
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fe5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1021

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1741
    .local v2, "pkg":Ljava/lang/String;
    move-object/from16 v39, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v1

    .end local v1  # "flag":I
    .local v40, "flag":I
    const-string v1, "Freeze: unfreeze pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " receiverUidForFreeze = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/meizu/pps/observer/PPSServer;->scheduleForceUnFreeze(I)V

    .line 1743
    const/16 v37, 0x0

    .line 1744
    .end local v2  # "pkg":Ljava/lang/String;
    move-object/from16 v0, v39

    move/from16 v1, v40

    goto :goto_fe5

    .line 1740
    .end local v40  # "flag":I
    .restart local v1  # "flag":I
    :cond_1021
    move/from16 v40, v1

    .end local v1  # "flag":I
    .restart local v40  # "flag":I
    goto :goto_102e

    .line 1732
    .end local v6  # "isFromNotification":Z
    .end local v37  # "skip":Z
    .end local v38  # "targetProcessForFreeze":Ljava/lang/String;
    .end local v40  # "flag":I
    .restart local v0  # "skip":Z
    .local v2, "targetProcessForFreeze":Ljava/lang/String;
    :cond_1024
    move-object/from16 v38, v2

    .end local v2  # "targetProcessForFreeze":Ljava/lang/String;
    .restart local v38  # "targetProcessForFreeze":Ljava/lang/String;
    goto :goto_102c

    .line 1731
    .end local v38  # "targetProcessForFreeze":Ljava/lang/String;
    .restart local v2  # "targetProcessForFreeze":Ljava/lang/String;
    :cond_1027
    move-object/from16 v38, v2

    .end local v2  # "targetProcessForFreeze":Ljava/lang/String;
    .restart local v38  # "targetProcessForFreeze":Ljava/lang/String;
    goto :goto_102c

    .line 1720
    .end local v3  # "receiverUidForFreeze":I
    .end local v4  # "appForFreeze":Lcom/android/server/am/ProcessRecord;
    .end local v19  # "actInfoForFreeze":Landroid/content/pm/ActivityInfo;
    .end local v36  # "targetProcess":Ljava/lang/String;
    .end local v38  # "targetProcessForFreeze":Ljava/lang/String;
    .local v6, "targetProcess":Ljava/lang/String;
    :cond_102a
    move-object/from16 v36, v6

    .line 1751
    .end local v6  # "targetProcess":Ljava/lang/String;
    .restart local v36  # "targetProcess":Ljava/lang/String;
    :goto_102c
    move/from16 v37, v0

    .end local v0  # "skip":Z
    .restart local v37  # "skip":Z
    :cond_102e
    :goto_102e
    if-eqz v37, :cond_1070

    .line 1752
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1059

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping delivery of ordered ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason described above"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_1059
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    const/4 v1, 0x2

    aput v1, v0, v9

    .line 1756
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1757
    iput-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1758
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1759
    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1761
    return-void

    .line 1763
    :cond_1070
    const/4 v4, 0x1

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    add-int/2addr v0, v4

    iput v0, v8, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 1765
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v4, v0, v9

    .line 1766
    iput v4, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1767
    move-object/from16 v6, v35

    .end local v35  # "component":Landroid/content/ComponentName;
    .local v6, "component":Landroid/content/ComponentName;
    iput-object v6, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1768
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1769
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_10b9

    iget v0, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const v1, 0x186a0

    if-le v0, v1, :cond_10b9

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated broadcast record activity info for secondary user, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callingUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue_MU"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_10b9
    if-eqz v42, :cond_10cb

    invoke-virtual/range {v42 .. v42}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v0

    cmp-long v0, v0, v17

    if-lez v0, :cond_10cb

    .line 1776
    nop

    .line 1777
    invoke-virtual/range {v42 .. v42}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v0

    .line 1776
    invoke-virtual {v11, v7, v0, v1, v8}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V

    .line 1782
    :cond_10cb
    :try_start_10cb
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1783
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v8, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1782
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_10db
    .catch Landroid/os/RemoteException; {:try_start_10cb .. :try_end_10db} :catch_1102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10cb .. :try_end_10db} :catch_10dc

    goto :goto_1103

    .line 1785
    :catch_10dc
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1787
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1786
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1104

    .line 1784
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :catch_1102
    move-exception v0

    .line 1788
    :goto_1103
    nop

    .line 1791
    :goto_1104
    if-eqz v5, :cond_11b9

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_11b9

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v0, :cond_11b9

    .line 1793
    :try_start_110e
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1110
    .catch Landroid/os/RemoteException; {:try_start_110e .. :try_end_1110} :catch_1194
    .catch Ljava/lang/RuntimeException; {:try_start_110e .. :try_end_1110} :catch_113c

    :try_start_1110
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1795
    invoke-direct {v11, v5, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_1122
    .catch Landroid/os/RemoteException; {:try_start_1110 .. :try_end_1122} :catch_112c
    .catch Ljava/lang/RuntimeException; {:try_start_1110 .. :try_end_1122} :catch_113c

    .line 1796
    move/from16 v3, p2

    :try_start_1124
    invoke-direct {v11, v8, v5, v3}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1127
    .catch Landroid/os/RemoteException; {:try_start_1124 .. :try_end_1127} :catch_112a
    .catch Ljava/lang/RuntimeException; {:try_start_1124 .. :try_end_1127} :catch_1128

    .line 1797
    return-void

    .line 1801
    :catch_1128
    move-exception v0

    goto :goto_113f

    .line 1798
    :catch_112a
    move-exception v0

    goto :goto_112f

    :catch_112c
    move-exception v0

    move/from16 v3, p2

    :goto_112f
    move-object/from16 v22, v5

    move-object/from16 v19, v6

    move/from16 v24, v10

    move-object/from16 v27, v12

    move-object/from16 v10, v36

    move v12, v7

    goto/16 :goto_11a0

    .line 1801
    :catch_113c
    move-exception v0

    move/from16 v3, p2

    .line 1802
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_113f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed sending broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1809
    invoke-virtual {v11, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1810
    iget v4, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    .end local v0  # "e":Ljava/lang/RuntimeException;
    .local v17, "e":Ljava/lang/RuntimeException;
    iget-boolean v0, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object v2, v8

    move v3, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v5

    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .local v22, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v24, v10

    move-object/from16 v10, v36

    .end local v6  # "component":Landroid/content/ComponentName;
    .end local v36  # "targetProcess":Ljava/lang/String;
    .local v10, "targetProcess":Ljava/lang/String;
    .local v19, "component":Landroid/content/ComponentName;
    .local v24, "isTop":Z
    move v6, v0

    move-object/from16 v27, v12

    move v12, v7

    .end local v7  # "receiverUid":I
    .local v12, "receiverUid":I
    .local v27, "events":Ljava/lang/String;
    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1814
    const/4 v1, 0x0

    iput v1, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1815
    return-void

    .line 1798
    .end local v17  # "e":Ljava/lang/RuntimeException;
    .end local v19  # "component":Landroid/content/ComponentName;
    .end local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "isTop":Z
    .end local v27  # "events":Ljava/lang/String;
    .restart local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6  # "component":Landroid/content/ComponentName;
    .restart local v7  # "receiverUid":I
    .local v10, "isTop":Z
    .local v12, "events":Ljava/lang/String;
    .restart local v36  # "targetProcess":Ljava/lang/String;
    :catch_1194
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v19, v6

    move/from16 v24, v10

    move-object/from16 v27, v12

    move-object/from16 v10, v36

    move v12, v7

    .line 1799
    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "component":Landroid/content/ComponentName;
    .end local v7  # "receiverUid":I
    .end local v36  # "targetProcess":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .local v10, "targetProcess":Ljava/lang/String;
    .local v12, "receiverUid":I
    .restart local v19  # "component":Landroid/content/ComponentName;
    .restart local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v24  # "isTop":Z
    .restart local v27  # "events":Ljava/lang/String;
    :goto_11a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when sending broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_11c4

    .line 1791
    .end local v19  # "component":Landroid/content/ComponentName;
    .end local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "isTop":Z
    .end local v27  # "events":Ljava/lang/String;
    .restart local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6  # "component":Landroid/content/ComponentName;
    .restart local v7  # "receiverUid":I
    .local v10, "isTop":Z
    .local v12, "events":Ljava/lang/String;
    .restart local v36  # "targetProcess":Ljava/lang/String;
    :cond_11b9
    move-object/from16 v22, v5

    move-object/from16 v19, v6

    move/from16 v24, v10

    move-object/from16 v27, v12

    move-object/from16 v10, v36

    move v12, v7

    .line 1823
    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "component":Landroid/content/ComponentName;
    .end local v7  # "receiverUid":I
    .end local v36  # "targetProcess":Ljava/lang/String;
    .local v10, "targetProcess":Ljava/lang/String;
    .local v12, "receiverUid":I
    .restart local v19  # "component":Landroid/content/ComponentName;
    .restart local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v24  # "isTop":Z
    .restart local v27  # "events":Ljava/lang/String;
    :goto_11c4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_11f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to start app ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_11f0
    iget-object v0, v11, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v46, 0x1

    iget-object v2, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1829
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/lit8 v47, v2, 0x4

    new-instance v2, Lcom/android/server/am/HostingRecord;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const-string v5, "broadcast"

    invoke-direct {v2, v5, v3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1831
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x2000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1217

    move/from16 v49, v4

    goto :goto_1219

    :cond_1217
    const/16 v49, 0x0

    :goto_1219
    const/16 v50, 0x0

    const/16 v51, 0x0

    .line 1827
    move-object/from16 v43, v0

    move-object/from16 v44, v10

    move-object/from16 v45, v1

    move-object/from16 v48, v2

    invoke-virtual/range {v43 .. v51}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1279

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process is bad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    invoke-virtual {v11, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1840
    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1842
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1843
    const/4 v5, 0x0

    iput v5, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1844
    return-void

    .line 1847
    :cond_1279
    iget-object v0, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v11, v0, v8}, Lcom/android/server/am/BroadcastQueue;->maybeAddAllowBackgroundActivityStartsToken(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 1848
    iput-object v8, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1849
    iput v9, v11, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    .line 1850
    return-void

    .line 1332
    .end local v9  # "recIdx":I
    .end local v10  # "targetProcess":Ljava/lang/String;
    .end local v12  # "receiverUid":I
    .end local v13  # "isIntercept":Z
    .end local v14  # "info":Landroid/content/pm/ResolveInfo;
    .end local v15  # "isSingleton":Z
    .end local v19  # "component":Landroid/content/ComponentName;
    .end local v20  # "calleeClass":Ljava/lang/String;
    .end local v21  # "isRunning":Z
    .end local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v23  # "appForIntercept":Lcom/android/server/am/ProcessRecord;
    .end local v24  # "isTop":Z
    .end local v25  # "perm":I
    .end local v26  # "nextReceiver":Ljava/lang/Object;
    .end local v27  # "events":Ljava/lang/String;
    .end local v28  # "isInterceptSuperMode":Z
    .end local v29  # "startProcess":Ljava/lang/String;
    .end local v30  # "calleePkg":Ljava/lang/String;
    .end local v31  # "callerPkg":Ljava/lang/String;
    .end local v32  # "realCallingPid":I
    .end local v33  # "broadcast":Landroid/content/Intent;
    .end local v34  # "calleeUid":I
    .end local v37  # "skip":Z
    .end local v42  # "brOptions":Landroid/app/BroadcastOptions;
    :cond_1283
    move v5, v12

    move-object v3, v15

    const-wide/16 v1, 0x40

    const/4 v4, 0x1

    move-wide v13, v1

    move-object v10, v3

    move v15, v4

    goto/16 :goto_1d8
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 4
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 311
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-string v1, "ORDERED"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 4
    .param p1, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 303
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const-string v1, "PARALLEL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueue;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method public scheduleBroadcastsLocked()V
    .registers 3

    .line 460
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule broadcasts ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_2b

    .line 465
    return-void

    .line 467
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 469
    return-void
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "duration"  # J
    .param p4, "r"  # Lcom/android/server/am/BroadcastRecord;

    .line 983
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_a

    .line 984
    const-wide/32 p2, 0x7fffffff

    .line 992
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 995
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 997
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 998
    :cond_30
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 999
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_53

    .line 1000
    :cond_42
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1001
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1003
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 1004
    return-void
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 13
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 395
    .local v8, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v8, :cond_81

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_81

    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v2, :cond_81

    .line 396
    iget-object v1, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "BroadcastQueue"

    const/4 v9, 0x0

    if-eq v1, p1, :cond_3d

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App mismatch when sending pending broadcast to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intended target is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v9

    .line 402
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 403
    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_45

    .line 404
    const/4 v0, 0x1

    .line 415
    goto :goto_81

    .line 405
    :catch_45
    move-exception v1

    move-object v10, v1

    .line 406
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 407
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v2, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 409
    iget v3, v8, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v4, v8, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v6, v8, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 411
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 413
    iput v9, v8, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 414
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    .end local v10  # "e":Ljava/lang/Exception;
    :cond_81
    :goto_81
    return v0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .registers 5
    .param p1, "timeoutTime"  # J

    .line 1865
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v0, :cond_14

    .line 1866
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1867
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1868
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1870
    .end local v0  # "msg":Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastDispatcher;->getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 434
    .local v1, "curActive":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_e

    .line 436
    move-object v0, v1

    .line 441
    :cond_e
    if-nez v0, :cond_3e

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_3e

    .line 442
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] skip & discard pending app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 447
    :cond_3e
    if-eqz v0, :cond_43

    .line 448
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastQueue;->skipReceiverLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 450
    :cond_43
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 421
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 422
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_17

    .line 423
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 424
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 426
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 428
    :cond_17
    return-void
.end method

.method start(Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 245
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher;->start()V

    .line 246
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 24
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 2098
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2099
    .local v10, "token":J
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2101
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2102
    .local v12, "N":I
    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_2f

    .line 2103
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2102
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 2105
    .end local v1  # "i":I
    :cond_2f
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mDispatcher:Lcom/android/server/am/BroadcastDispatcher;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastDispatcher;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2106
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_45

    .line 2107
    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2110
    :cond_45
    iget v1, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 2111
    .local v1, "lastIndex":I
    move v2, v1

    .line 2115
    .local v2, "ringIndex":I
    :goto_48
    sget v3, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v13, -0x1

    invoke-direct {v0, v2, v13, v3}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v2

    .line 2116
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v3, v3, v2

    .line 2117
    .local v3, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v3, :cond_5d

    .line 2118
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2120
    .end local v3  # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_5d
    if-ne v2, v1, :cond_c7

    .line 2122
    iget v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v2, v3

    move v14, v3

    .line 2124
    .end local v1  # "lastIndex":I
    .local v14, "lastIndex":I
    :goto_63
    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {v0, v2, v13, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v15

    .line 2125
    .end local v2  # "ringIndex":I
    .local v15, "ringIndex":I
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v16, v1, v15

    .line 2126
    .local v16, "intent":Landroid/content/Intent;
    if-nez v16, :cond_72

    .line 2127
    move/from16 v19, v14

    goto :goto_bb

    .line 2129
    :cond_72
    const-wide v1, 0x20b00000006L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2130
    .local v7, "summaryToken":J
    const-wide v3, 0x10b00000001L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v19, v14

    move-wide v13, v7

    .end local v7  # "summaryToken":J
    .end local v14  # "lastIndex":I
    .local v13, "summaryToken":J
    .local v19, "lastIndex":I
    move/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 2132
    const-wide v1, 0x10300000002L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2134
    const-wide v1, 0x10300000003L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2136
    const-wide v1, 0x10300000004L

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v3, v3, v15

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2138
    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2139
    .end local v13  # "summaryToken":J
    .end local v16  # "intent":Landroid/content/Intent;
    :goto_bb
    move/from16 v3, v19

    .end local v19  # "lastIndex":I
    .local v3, "lastIndex":I
    if-ne v15, v3, :cond_c3

    .line 2140
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2141
    return-void

    .line 2139
    :cond_c3
    move v14, v3

    move v2, v15

    const/4 v13, -0x1

    goto :goto_63

    .line 2120
    .end local v3  # "lastIndex":I
    .end local v15  # "ringIndex":I
    .restart local v1  # "lastIndex":I
    .restart local v2  # "ringIndex":I
    :cond_c7
    goto :goto_48
.end method
