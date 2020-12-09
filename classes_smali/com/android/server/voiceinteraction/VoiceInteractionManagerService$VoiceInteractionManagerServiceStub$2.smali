.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 2

    .line 1432
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onHandleForceStop$0(Ljava/lang/Boolean;)V
    .registers 2

    .line 1474
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_d

    .line 1475
    const-string p0, "VoiceInteractionManagerService"

    const-string v0, "Failed to clear default assistant for force stop"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_d
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 16

    .line 1437
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1438
    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object p3

    .line 1439
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1440
    nop

    .line 1441
    nop

    .line 1442
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3d

    aget-object v5, p2, v3

    .line 1443
    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1444
    nop

    .line 1445
    move p3, v2

    move p2, v4

    goto :goto_3f

    .line 1446
    :cond_2a
    if-eqz v0, :cond_3a

    .line 1447
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1448
    nop

    .line 1449
    move p2, v2

    move p3, v4

    goto :goto_3f

    .line 1442
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_3d
    move p2, v2

    move p3, p2

    .line 1452
    :goto_3f
    const/4 v0, 0x0

    if-eqz p2, :cond_b9

    if-eqz p4, :cond_b9

    .line 1455
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v1

    .line 1456
    :try_start_47
    const-string p4, "VoiceInteractionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force stopping current voice interactor: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 1457
    invoke-virtual {v5, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1456
    invoke-static {p4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$200(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    .line 1459
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p4, p4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz p4, :cond_7a

    .line 1460
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p4, p4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 1461
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {p4, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$300(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 1464
    :cond_7a
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p4, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1465
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p4, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1466
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p4, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    .line 1467
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p4, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 1468
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p4, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 1470
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object p4, p4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 1471
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/role/RoleManager;

    const-string v6, "android.app.role.ASSISTANT"

    const/4 v7, 0x0

    .line 1472
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1473
    invoke-virtual {p4}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    sget-object v10, Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2$_YjGqp96fW1i83gthgQe_rVHY5s;->INSTANCE:Lcom/android/server/voiceinteraction/-$$Lambda$VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2$_YjGqp96fW1i83gthgQe_rVHY5s;

    .line 1471
    invoke-virtual/range {v5 .. v10}, Landroid/app/role/RoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1479
    monitor-exit v1

    goto :goto_e6

    :catchall_b6
    move-exception p1

    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_47 .. :try_end_b8} :catchall_b6

    throw p1

    .line 1480
    :cond_b9
    if-eqz p3, :cond_e6

    if-eqz p4, :cond_e6

    .line 1483
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter p4

    .line 1484
    :try_start_c0
    const-string v1, "VoiceInteractionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force stopping current voice recognizer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 1485
    invoke-virtual {v5, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initSimpleRecognizer(Landroid/service/voice/VoiceInteractionServiceInfo;I)V

    .line 1487
    monitor-exit p4

    goto :goto_e6

    :catchall_e3
    move-exception p1

    monitor-exit p4
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_e3

    throw p1

    .line 1489
    :cond_e6
    :goto_e6
    if-nez p2, :cond_ea

    if-eqz p3, :cond_eb

    :cond_ea
    move v2, v4

    :cond_eb
    return v2
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .registers 3

    .line 1494
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 5

    .line 1500
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->getChangingUserId()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 1501
    return-void

    .line 1504
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageAppearing(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 1505
    return-void

    .line 1507
    :cond_14
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1508
    if-nez v0, :cond_73

    .line 1509
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 1510
    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object p1

    .line 1511
    if-eqz p1, :cond_72

    .line 1512
    new-instance v0, Landroid/content/ComponentName;

    .line 1513
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1514
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1516
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_72

    .line 1517
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1518
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    new-instance v1, Landroid/content/ComponentName;

    .line 1519
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1520
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->access$400(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)I

    move-result p1

    .line 1518
    invoke-virtual {v0, v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1523
    :cond_72
    goto :goto_9b

    .line 1524
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->didSomePackagesChange()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8b

    .line 1526
    nop

    .line 1527
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1528
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeeded(Z)V

    goto :goto_9b

    .line 1532
    :cond_8b
    nop

    .line 1533
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isComponentModified(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 1534
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeeded(Z)V

    .line 1538
    :cond_9b
    :goto_9b
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 8

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->getChangingUserId()I

    move-result v0

    .line 1545
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v1

    .line 1546
    :try_start_7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1547
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 1548
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v4, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurAssistant(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 1549
    const/4 v5, 0x0

    if-nez v3, :cond_31

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->anyPackagesAppearing()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1552
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1553
    if-eqz v2, :cond_2f

    .line 1554
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1557
    :cond_2f
    monitor-exit v1

    return-void

    .line 1560
    :cond_31
    const/4 v6, 0x3

    if-eqz v2, :cond_80

    .line 1561
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v3

    .line 1562
    if-ne v3, v6, :cond_54

    .line 1565
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1566
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1567
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    .line 1568
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 1569
    monitor-exit v1

    return-void

    .line 1572
    :cond_54
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageAppearing(Ljava/lang/String;)I

    move-result v0

    .line 1573
    if-eqz v0, :cond_7e

    .line 1576
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_7e

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 1577
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1578
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 1581
    :cond_7e
    monitor-exit v1

    return-void

    .line 1584
    :cond_80
    if-eqz v4, :cond_a2

    .line 1585
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v2

    .line 1586
    if-ne v2, v6, :cond_a2

    .line 1590
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1591
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1592
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    .line 1593
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 1594
    monitor-exit v1

    return-void

    .line 1599
    :cond_a2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v2

    .line 1600
    if-eq v2, v6, :cond_ca

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b0

    goto :goto_ca

    .line 1604
    :cond_b0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->isPackageModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1605
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_d5

    .line 1602
    :cond_ca
    :goto_ca
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v3, v5, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1608
    :cond_d5
    :goto_d5
    monitor-exit v1

    .line 1609
    return-void

    .line 1608
    :catchall_d7
    move-exception v0

    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_7 .. :try_end_d9} :catchall_d7

    throw v0
.end method
