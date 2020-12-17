.class Lcom/meizu/settings/applications/RunningState$ProcessItem;
.super Lcom/meizu/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/meizu/settings/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/meizu/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 404
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const v1, 0x7f121358

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 407
    iput p2, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mUid:I

    .line 408
    iput-object p3, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 589
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 590
    invoke-virtual {v2, p1, p2}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 591
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget v3, v2, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_1e

    .line 593
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .registers 10

    .line 564
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v1, v0, :cond_27

    .line 567
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 568
    iget-object v5, v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mClient:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eq v5, p0, :cond_1a

    .line 570
    iput-object p0, v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mClient:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    move v2, v3

    .line 572
    :cond_1a
    iput p3, v4, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 573
    invoke-virtual {v4, p2}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 574
    invoke-virtual {v4, p1, p2, p3}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 577
    :cond_27
    iget p1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-eq p1, p2, :cond_3a

    .line 579
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    move v2, v3

    :cond_3a
    return v2
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .registers 11

    .line 412
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x2000

    .line 417
    :try_start_7
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 419
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v2, v3, :cond_24

    .line 420
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 421
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 422
    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_23} :catch_24

    return-void

    .line 430
    :catch_24
    :cond_24
    iget v1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 433
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_46

    .line 435
    :try_start_2f
    aget-object v2, v1, v4

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 437
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 438
    iget-object v3, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 439
    iput-object v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_45} :catch_46

    return-void

    .line 447
    :catch_46
    :cond_46
    array-length v2, v1

    move v3, v4

    :goto_48
    if-ge v3, v2, :cond_6e

    aget-object v5, v1, v3

    .line 449
    :try_start_4c
    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 450
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_6b

    .line 451
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 454
    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 455
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 456
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 466
    :cond_6e
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_9d

    .line 467
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 469
    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 470
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 471
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    return-void

    .line 477
    :cond_9d
    :try_start_9d
    aget-object v1, v1, v4

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 479
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 480
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_b3} :catch_b3

    :catch_b3
    return-void
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .registers 13

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_78

    .line 494
    new-instance v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    iget v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v1, v5}, Lcom/meizu/settings/applications/RunningState$ServiceItem;-><init>(I)V

    .line 495
    iput-object p2, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 497
    :try_start_1c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/16 v7, 0x2000

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 499
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 497
    invoke-interface {v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iput-object v5, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 501
    iget-object v5, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_4d

    const-string v5, "RunningService"

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServiceInfo returned null for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_4c} :catch_4d

    return v3

    .line 508
    :catch_4d
    :cond_4d
    iget-object v5, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 509
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 508
    invoke-static {v0, v5, v6}, Lcom/meizu/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 510
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_66

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_67

    :cond_66
    move-object v5, v2

    :goto_67
    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 511
    iget-object v5, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 512
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    goto :goto_79

    :cond_78
    move v5, v3

    .line 514
    :goto_79
    iget p0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iput p0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 515
    iput-object p2, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 516
    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-nez p0, :cond_8a

    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    goto :goto_8c

    :cond_8a
    const-wide/16 v6, -0x1

    .line 517
    :goto_8c
    iget-wide v8, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long p0, v8, v6

    if-eqz p0, :cond_95

    .line 518
    iput-wide v6, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    move v5, v4

    .line 521
    :cond_95
    iget-object p0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz p0, :cond_c5

    iget p0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz p0, :cond_c5

    .line 522
    iget-boolean p0, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz p0, :cond_a4

    .line 523
    iput-boolean v3, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    move v5, v4

    .line 527
    :cond_a4
    :try_start_a4
    iget-object p0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 528
    iget p2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f121350

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-virtual {p2, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;
    :try_end_c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a4 .. :try_end_c1} :catch_c2

    goto :goto_d9

    .line 532
    :catch_c2
    iput-object v2, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_d9

    .line 535
    :cond_c5
    iget-boolean p0, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez p0, :cond_cc

    .line 536
    iput-boolean v4, v1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    move v5, v4

    .line 539
    :cond_cc
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f12135d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 543
    :goto_d9
    iget-object p0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->formatStringPunctuation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    return v5
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .registers 7

    const-wide/16 v0, 0x400

    mul-long/2addr p2, v0

    .line 548
    iput-wide p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    .line 549
    iget p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    const/4 p3, 0x0

    if-ne p2, p4, :cond_1a

    .line 550
    iget-wide v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 553
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_1a
    return p3
.end method
