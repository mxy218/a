.class Lcom/android/server/incident/PendingReports;
.super Ljava/lang/Object;
.source "PendingReports.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/PendingReports$PendingReportRec;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextPendingId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/incident/PendingReports$PendingReportRec;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/server/incident/RequestQueue;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/android/server/incident/RequestQueue;

    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/incident/RequestQueue;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 124
    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 126
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 127
    return-void
.end method

.method static synthetic access$008(Lcom/android/server/incident/PendingReports;)I
    .registers 3

    .line 48
    iget v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    return v0
.end method

.method private authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 21

    .line 268
    move-object v8, p0

    move v0, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p6

    if-eqz v0, :cond_30

    invoke-direct/range {p0 .. p2}, Lcom/android/server/incident/PendingReports;->isPackageInUid(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, v9, v3}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 272
    return-void

    .line 276
    :cond_30
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v10

    .line 277
    const/16 v0, -0x2710

    if-ne v10, v0, :cond_3c

    .line 278
    invoke-direct {p0, v9, v3}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 279
    return-void

    .line 283
    :cond_3c
    invoke-direct {p0, v10}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v11

    .line 284
    if-nez v11, :cond_46

    .line 287
    invoke-direct {p0, v9, v3}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 288
    return-void

    .line 292
    :cond_46
    nop

    .line 293
    iget-object v12, v8, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 294
    :try_start_4a
    new-instance v13, Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 295
    iget-object v0, v8, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v12
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_91

    .line 299
    :try_start_61
    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;

    invoke-direct {v1, p0, v9, v11, v10}, Lcom/android/server/incident/-$$Lambda$PendingReports$B2hwzQpyMfhPG0Cw6n_Xz1SrHR0;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6e} :catch_6f

    .line 307
    goto :goto_8d

    .line 303
    :catch_6f
    move-exception v0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote died while trying to register death listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, v9, v11, v10}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 310
    :goto_8d
    invoke-direct {p0, v11, v10}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 311
    return-void

    .line 296
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method private cancelReportImpl(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 317
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 319
    const/16 v2, -0x2710

    if-eq v0, v2, :cond_11

    if-eqz v1, :cond_11

    .line 320
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 322
    :cond_11
    return-void
.end method

.method private cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V

    .line 333
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 335
    invoke-direct {p0, p2, p3}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 336
    return-void

    .line 333
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V
    .registers 5

    .line 414
    :try_start_0
    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 417
    goto :goto_1b

    .line 415
    :catch_4
    move-exception p1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed calling back for denial for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IncidentCompanionService"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :goto_1b
    return-void
.end method

.method private findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;
    .registers 6

    .line 374
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 377
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_f} :catch_2c

    .line 382
    nop

    .line 384
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 386
    iget v3, v2, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    if-ne v3, p1, :cond_2a

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 388
    return-object v2

    .line 390
    :cond_2a
    goto :goto_16

    .line 391
    :cond_2b
    return-object v1

    .line 379
    :catch_2c
    move-exception v0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse id from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IncidentCompanionService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-object v1
.end method

.method private getAndValidateUser()I
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getApproverComponent(I)Landroid/content/ComponentName;
    .registers 5

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x1c0000

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 441
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 443
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Didn\'t find exactly one BroadcastReceiver to handle android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED. The report will be denied. size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": matches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    const-string v0, "IncidentCompanionService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 p1, 0x0

    return-object p1
.end method

.method private isPackageInUid(ILjava/lang/String;)Z
    .registers 4

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7

    .line 457
    const/4 p1, 0x1

    return p1

    .line 458
    :catch_7
    move-exception p1

    .line 459
    const/4 p1, 0x0

    return p1
.end method

.method private removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 401
    iget-object v2, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v2}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_43

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...Removed PendingReportRec index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 405
    :cond_43
    goto :goto_6

    .line 406
    :cond_44
    return-void
.end method

.method private sendBroadcast()V
    .registers 3

    .line 345
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    .line 346
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_9

    .line 347
    return-void

    .line 349
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 350
    if-nez v1, :cond_10

    .line 351
    return-void

    .line 353
    :cond_10
    invoke-direct {p0, v1, v0}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    .line 354
    return-void
.end method

.method private sendBroadcast(Landroid/content/ComponentName;I)V
    .registers 6

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 363
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 367
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 366
    const-string v2, "android.permission.APPROVE_INCIDENT_REPORTS"

    invoke-virtual {v1, v0, p2, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    .line 189
    if-nez v1, :cond_21

    .line 190
    const-string v1, "IncidentCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmApproved: Couldn\'t find record for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_59

    .line 197
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Approved report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v0}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    .line 204
    goto :goto_58

    .line 202
    :catch_41
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed calling back for approval for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :goto_58
    return-void

    .line 193
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 18

    .line 141
    move-object v1, p0

    iget-object v8, v1, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/incident/-$$Lambda$PendingReports$42Ba6ZxAFxFmqtPlfnXNpuKHOXM;-><init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/incident/-$$Lambda$PendingReports$h00dGfNWXgDmC4-YyxYy1CUoKw4;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public denyReport(Ljava/lang/String;)V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    .line 214
    if-nez v1, :cond_21

    .line 215
    const-string v1, "IncidentCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDenied: Couldn\'t find record for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_59

    .line 222
    invoke-direct {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Denied report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IncidentCompanionService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v0}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    .line 229
    goto :goto_58

    .line 227
    :catch_41
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed calling back for denial for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_58
    return-void

    .line 218
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 236
    array-length p1, p3

    if-nez p1, :cond_6e

    .line 238
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object p3, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 240
    :try_start_e
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPending: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v0, :cond_69

    .line 243
    iget-object v3, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 244
    const-string v4, "  %11d %s: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, v3, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 245
    invoke-virtual {p1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    .line 246
    invoke-virtual {v3}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 244
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 248
    :cond_69
    monitor-exit p3

    goto :goto_6e

    :catchall_6b
    move-exception p1

    monitor-exit p3
    :try_end_6d
    .catchall {:try_start_e .. :try_end_6d} :catchall_6b

    throw p1

    .line 250
    :cond_6e
    :goto_6e
    return-void
.end method

.method public getPendingReports()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_27

    .line 174
    iget-object v4, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    invoke-virtual {v4}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 176
    :cond_27
    monitor-exit v0

    return-object v2

    .line 177
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public synthetic lambda$authorizeReport$0$PendingReports(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 7

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/incident/PendingReports;->authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 144
    return-void
.end method

.method public synthetic lambda$authorizeReportImpl$2$PendingReports(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .registers 6

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got death notification listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 302
    return-void
.end method

.method public synthetic lambda$cancelAuthorization$1$PendingReports(Landroid/os/IIncidentAuthListener;)V
    .registers 2

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;)V

    .line 160
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-virtual {v0}, Lcom/android/server/incident/RequestQueue;->start()V

    .line 259
    return-void
.end method
