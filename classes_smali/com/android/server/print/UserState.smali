.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"

.field private static final SERVICE_RESTART_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInstantServiceAllowed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field private mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .registers 7

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 128
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 165
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 166
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 167
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 168
    new-instance p3, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p3, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object p3, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 170
    iget-object p1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 171
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 173
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 174
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_53

    .line 177
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    .line 180
    return-void

    .line 174
    :catchall_53
    move-exception p2

    :try_start_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p2
.end method

.method static synthetic access$102(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/UserState;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4

    .line 1071
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_10

    .line 1073
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1075
    :cond_10
    return-void
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .registers 4

    .line 1093
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1094
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b

    .line 1097
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 1099
    :goto_1b
    return-void
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .registers 11

    .line 1102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, -0x4

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1

    .line 1104
    if-nez p1, :cond_b

    .line 1105
    return-void

    .line 1107
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1109
    :try_start_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1110
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_32

    .line 1111
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1112
    iget-object v5, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v8, 0x1040608

    .line 1113
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1112
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_37

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1116
    :cond_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_37
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getInstalledComponents()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1002
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2d

    .line 1003
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1004
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1010
    :cond_2d
    return-object v0
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 9

    .line 1128
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p2

    .line 1130
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_d

    .line 1132
    monitor-exit v0

    return-void

    .line 1134
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1135
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3d

    .line 1136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1137
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_3c

    .line 1138
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1139
    iget v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2b

    iget v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v4, p2, :cond_39

    .line 1142
    :cond_2b
    :try_start_2b
    iget-object v3, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v3, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 1145
    goto :goto_39

    .line 1143
    :catch_31
    move-exception v3

    .line 1144
    const-string v4, "UserState"

    const-string v5, "Error notifying for print job state change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1148
    :cond_3c
    return-void

    .line 1135
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1175
    monitor-exit v0

    return-void

    .line 1177
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1179
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 1180
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_34

    .line 1181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 1182
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_33

    .line 1183
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1186
    :try_start_20
    iget-object v2, v2, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v2, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v2}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 1189
    goto :goto_30

    .line 1187
    :catch_28
    move-exception v2

    .line 1188
    const-string v3, "UserState"

    const-string v4, "Error notifying for print service recommendations change"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1191
    :cond_33
    return-void

    .line 1180
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private handleDispatchPrintServicesChanged()V
    .registers 7

    .line 1152
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_9

    .line 1154
    monitor-exit v0

    return-void

    .line 1156
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 1158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1159
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_31

    .line 1160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1163
    :try_start_1e
    iget-object v3, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v3, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v3}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 1166
    goto :goto_2e

    .line 1164
    :catch_26
    move-exception v3

    .line 1165
    const-string v4, "UserState"

    const-string v5, "Error notifying for print services change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1168
    :cond_31
    return-void

    .line 1157
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static synthetic lambda$HoM_sy_T_4RiQGYcbixewHZ2IMA(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$LdWYUAKz4cbWqoxOD4oZ_ZslKdg(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public static synthetic lambda$d-WQxYwbHYb6N0le5ohwQsWVdjw(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic lambda$f3loorfBpq9Tu3Vl5vt4Ul321ok(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$lM4y7oOfdlEk7JJ3u_zy-rL_-YI(Lcom/android/server/print/UserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void
.end method

.method private onConfigurationChanged()V
    .registers 3

    .line 1194
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 1196
    monitor-exit v0

    .line 1197
    return-void

    .line 1196
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private onConfigurationChangedLocked()V
    .registers 11

    .line 1035
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1038
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_43

    .line 1039
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/ComponentName;

    .line 1041
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1042
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 1043
    new-instance v3, Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v4, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1045
    invoke-direct {p0, v3}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1046
    goto :goto_40

    .line 1048
    :cond_33
    iget-object v3, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/RemotePrintService;

    .line 1049
    if-eqz v3, :cond_40

    .line 1050
    invoke-direct {p0, v3}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1038
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1055
    :cond_43
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 1056
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1057
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1058
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1059
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1060
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1061
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 1062
    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1063
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1065
    :cond_71
    goto :goto_4d

    .line 1067
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    .line 1068
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 1

    .line 874
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 875
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 876
    return-void
.end method

.method private readDisabledPrintServicesLocked()V
    .registers 3

    .line 949
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 950
    const-string v1, "disabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 952
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 953
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 954
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 956
    :cond_1c
    return-void
.end method

.method private readInstalledPrintServicesLocked()V
    .registers 9

    .line 879
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 881
    nop

    .line 883
    iget-boolean v1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    if-eqz v1, :cond_e

    .line 884
    const v1, 0x10800084

    goto :goto_11

    .line 883
    :cond_e
    const v1, 0x10000084

    .line 887
    :goto_11
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 888
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 890
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 891
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_74

    .line 892
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 893
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 895
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping print service "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since it does not require permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    const-string v5, "UserState"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    goto :goto_71

    .line 904
    :cond_68
    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 907
    :cond_74
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 908
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    return-void
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 963
    iget-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 964
    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 965
    :goto_17
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 966
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 968
    goto :goto_17

    .line 970
    :cond_28
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 971
    if-eqz p1, :cond_31

    .line 972
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_31
    goto :goto_17

    .line 976
    :cond_32
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1081
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_f

    .line 1082
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_12

    .line 1085
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 1087
    :goto_12
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 1124
    return-void

    .line 1122
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private upgradePersistentStateIfNeeded()V
    .registers 8

    .line 915
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-string v2, "enabled_print_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_4d

    .line 921
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 922
    invoke-direct {p0, v2, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 925
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 926
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 927
    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_3e

    .line 928
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 929
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 930
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 934
    :cond_3e
    invoke-direct {p0, v1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 938
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 941
    :cond_4d
    return-void
.end method

.method private writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 985
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    goto :goto_9

    .line 989
    :cond_28
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 989
    const-string v2, "disabled_print_services"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 991
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 561
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 565
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 648
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_20

    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 651
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 653
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 655
    :cond_20
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 605
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_11

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 608
    :cond_11
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    .line 341
    if-nez p2, :cond_9

    .line 342
    return-void

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 348
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_38

    .line 349
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object p1

    .line 351
    if-eqz p1, :cond_37

    .line 352
    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object p1

    .line 353
    nop

    .line 354
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_24
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 356
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_34

    .line 357
    if-nez p1, :cond_30

    .line 358
    return-void

    .line 360
    :cond_30
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_37

    .line 356
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1

    .line 362
    :cond_37
    :goto_37
    goto :goto_3f

    .line 365
    :cond_38
    iget-object p2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 367
    :goto_3f
    return-void
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 450
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 453
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1c

    .line 455
    new-instance v1, Lcom/android/server/print/UserState$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 462
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    goto :goto_21

    .line 465
    :cond_1c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 467
    :goto_21
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public destroyLocked()V
    .registers 3

    .line 799
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 800
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 801
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 802
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 803
    goto :goto_12

    .line 804
    :cond_22
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 805
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 806
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 807
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_3b

    .line 808
    invoke-virtual {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 811
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 812
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_9

    .line 474
    monitor-exit v0

    return-void

    .line 477
    :cond_9
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 478
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 15

    .line 815
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_3
    const-string/jumbo v1, "user_id"

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 818
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 819
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_79

    .line 820
    const-string v4, "installed_services"

    const-wide v5, 0x20b00000002L

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 822
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    .line 824
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 825
    const-string v8, "component_name"

    const-wide v9, 0x10b00000001L

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v8, v9, v10, v11}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 830
    const-string/jumbo v7, "settings_activity"

    const-wide v8, 0x10900000002L

    .line 832
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v10

    .line 830
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 833
    const-string v7, "add_printers_activity"

    const-wide v8, 0x10900000003L

    .line 835
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v10

    .line 833
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 836
    const-string v7, "advanced_options_activity"

    const-wide v8, 0x10900000004L

    .line 838
    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v6

    .line 836
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 840
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 843
    :cond_79
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 844
    const-string v4, "disabled_services"

    const-wide v5, 0x20b00000003L

    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 846
    goto :goto_7f

    .line 848
    :cond_96
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 849
    nop

    :goto_9d
    if-ge v2, v1, :cond_bb

    .line 850
    const-string v3, "actives_services"

    const-wide v4, 0x20b00000004L

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 852
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v5, p1}, Lcom/android/server/print/RemotePrintService;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 853
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 849
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 856
    :cond_bb
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 858
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v1, :cond_d7

    .line 859
    const-string v1, "discovery_service"

    const-wide v2, 0x20b00000006L

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 861
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 862
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 865
    :cond_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_3 .. :try_end_d8} :catchall_ed

    .line 867
    const-wide v0, 0x10b00000007L

    const-string/jumbo v2, "print_spooler_state"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 869
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 870
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 871
    return-void

    .line 865
    :catchall_ed
    move-exception p1

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw p1
.end method

.method public getBindInstantServiceAllowed()Z
    .registers 2

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    return v0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 5

    .line 327
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 329
    if-nez v0, :cond_19

    .line 330
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 331
    if-eqz v1, :cond_19

    .line 332
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 336
    :cond_19
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 305
    if-nez v0, :cond_e

    .line 306
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 308
    :cond_e
    if-eqz v0, :cond_17

    .line 311
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 314
    :cond_17
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 276
    const/4 v3, 0x0

    move v4, v3

    :goto_11
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2a

    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 278
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 286
    :cond_2a
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1

    .line 288
    if-eqz p1, :cond_50

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    nop

    :goto_38
    if-ge v3, v0, :cond_50

    .line 291
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    .line 292
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v2, v5}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v5}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 300
    :cond_50
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    const/4 v1, 0x0

    .line 380
    :try_start_4
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 381
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_50

    .line 382
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 384
    new-instance v5, Landroid/content/ComponentName;

    .line 385
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 386
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 391
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 392
    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_43

    .line 393
    goto :goto_4d

    .line 396
    :cond_3e
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_43

    .line 397
    goto :goto_4d

    .line 401
    :cond_43
    if-nez v1, :cond_4a

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    :cond_4a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 406
    :cond_50
    monitor-exit v0

    return-object v1

    .line 407
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public increasePriority()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    .line 184
    return-void
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 209
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 210
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 211
    if-eqz p1, :cond_14

    .line 212
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 214
    :cond_14
    return-void

    .line 210
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 4

    .line 752
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 754
    iget-object p2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 755
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 758
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_11

    .line 759
    monitor-exit p2

    return-void

    .line 761
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V

    .line 762
    monitor-exit p2

    .line 763
    return-void

    .line 762
    :catchall_18
    move-exception p1

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 191
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 193
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    .line 194
    if-eqz v1, :cond_1d

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_30

    .line 199
    :cond_1d
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v3, 0x1040608

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 202
    :goto_30
    return-void

    .line 193
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 5

    .line 699
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 700
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;

    .line 702
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 703
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    .line 700
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 713
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void
.end method

.method public onPrintServicesChanged()V
    .registers 3

    .line 707
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 723
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 724
    monitor-exit v0

    return-void

    .line 727
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 728
    monitor-exit v0

    return-void

    .line 730
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 731
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 739
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 740
    monitor-exit v0

    return-void

    .line 743
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 744
    monitor-exit v0

    return-void

    .line 746
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 747
    monitor-exit v0

    .line 748
    return-void

    .line 747
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 7

    .line 767
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 770
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 771
    monitor-exit v0

    return-void

    .line 774
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 775
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 777
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 785
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_38

    .line 786
    monitor-exit v0

    return-void

    .line 788
    :cond_38
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 789
    monitor-exit v0

    .line 790
    return-void

    .line 789
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 16

    .line 224
    const-string v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    new-instance v1, Landroid/print/PrintJobInfo;

    invoke-direct {v1}, Landroid/print/PrintJobInfo;-><init>()V

    .line 225
    new-instance v2, Landroid/print/PrintJobId;

    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v1, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 226
    invoke-virtual {v1, p5}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 227
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, p3}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 229
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 230
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 234
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p1, p3, p5, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_34

    .line 237
    return-object p3

    .line 240
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 242
    :try_start_38
    new-instance v6, Landroid/content/Intent;

    const-string p1, "android.print.PRINT_DIALOG"

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    const-string/jumbo p1, "printjob"

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object p5

    invoke-virtual {p5}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    const-string p1, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 245
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x54000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget p1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v9, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    .line 253
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 254
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    const-string p3, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_84
    .catchall {:try_start_38 .. :try_end_84} :catchall_89

    .line 257
    nop

    .line 259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return-object p2

    .line 259
    :catchall_89
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public prunePrintServices()V
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 1023
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1024
    if-eqz v2, :cond_14

    .line 1025
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 1027
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 1030
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 1032
    return-void

    .line 1027
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 218
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .registers 8

    .line 580
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 582
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 583
    monitor-exit v0

    return-void

    .line 585
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 586
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_39

    .line 587
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 588
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 589
    iget-object v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 590
    invoke-virtual {v3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->destroy()V

    .line 591
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 592
    goto :goto_39

    .line 586
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 595
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 596
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 598
    :cond_44
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .registers 8

    .line 671
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 673
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 674
    monitor-exit v0

    return-void

    .line 676
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 677
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3b

    .line 678
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 679
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 680
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 681
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 682
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 683
    goto :goto_3b

    .line 677
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 686
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 687
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 689
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 691
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 692
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 694
    :cond_4f
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .registers 8

    .line 623
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 625
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_c

    .line 626
    monitor-exit v0

    return-void

    .line 628
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 629
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3b

    .line 630
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 631
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 632
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 633
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 634
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 635
    goto :goto_3b

    .line 629
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 638
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 639
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 641
    :cond_46
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .registers 5

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p2

    .line 371
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getState()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_e

    goto :goto_16

    .line 374
    :cond_e
    iget-object p2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 375
    return-void

    .line 372
    :cond_16
    :goto_16
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .registers 3

    .line 1204
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1208
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 9

    .line 411
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    nop

    .line 413
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_f

    .line 414
    :try_start_8
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_36

    .line 417
    :cond_f
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 418
    move v4, v2

    :goto_16
    if-ge v4, v3, :cond_35

    .line 419
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    .line 421
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 422
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    nop

    .line 424
    move p1, v1

    goto :goto_36

    .line 418
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_35
    move p1, v2

    .line 429
    :goto_36
    if-eqz p1, :cond_4a

    .line 430
    iget-object p1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 432
    iget-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/16 v3, 0x1ff

    .line 433
    if-eqz p2, :cond_44

    move v1, v2

    .line 432
    :cond_44
    invoke-static {p1, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 437
    :cond_4a
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 487
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_c

    .line 488
    monitor-exit v0

    return-void

    .line 491
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 529
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 530
    monitor-exit v0

    return-void

    .line 533
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 534
    monitor-exit v0

    return-void

    .line 537
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 501
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_c

    .line 502
    monitor-exit v0

    return-void

    .line 505
    :cond_c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 545
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 546
    monitor-exit v0

    return-void

    .line 549
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 550
    monitor-exit v0

    return-void

    .line 553
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public updateIfNeededLocked()V
    .registers 1

    .line 793
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 794
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 795
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 796
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 513
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 514
    monitor-exit v0

    return-void

    .line 517
    :cond_10
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_16

    .line 518
    monitor-exit v0

    return-void

    .line 521
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
