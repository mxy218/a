.class final Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .registers 2

    .line 1496
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 3

    .line 1495
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .registers 3

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1507
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1506
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1504
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1510
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1508
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarterDelegate(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1512
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1511
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1516
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1515
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1513
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1520
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1519
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1517
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1524
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1523
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1521
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1528
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1527
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1525
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1532
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1531
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1529
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1536
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1535
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1533
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1539
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1537
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1543
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1542
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1540
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1546
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1544
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1550
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1549
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1547
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1554
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1553
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1551
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1555
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1558
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1557
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1555
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1561
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1559
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1565
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1564
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1562
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1569
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1566
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1572
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1570
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1575
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1573
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1579
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1578
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1576
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1582
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1580
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1584
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1583
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1588
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1587
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1585
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1589
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1590
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1589
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1592
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1591
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1594
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1593
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1597
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1595
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1600
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1598
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1604
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1603
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1601
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1608
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1607
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1605
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1612
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1609
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1614
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1613
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1617
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1615
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1619
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1618
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1623
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1622
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1620
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1625
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1624
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1629
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1628
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1626
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1633
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1632
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1630
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1636
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1634
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1637
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1639
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1637
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1641
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1640
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1644
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1642
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1647
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1645
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1649
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1648
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1653
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1652
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1650
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1655
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1654
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1658
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1656
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1661
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1659
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1664
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1662
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1668
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1667
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1665
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1670
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1669
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1673
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1671
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1674
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1676
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1674
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1679
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1677
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1683
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1682
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1680
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1684
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1686
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1684
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1690
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1689
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1687
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1692
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1691
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMInitController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1696
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1695
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1693
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1697
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1700
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1697
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1701
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1704
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1703
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1701
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1709
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1707
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1705
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1713
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1712
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1710
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1716
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1714
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1719
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1717
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1722
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1720
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1723
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1725
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1723
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1729
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1728
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1726
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1733
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1732
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1730
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1735
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1734
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1738
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1736
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1739
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1740
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$7900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1739
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1744
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1743
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1741
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1746
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1745
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1749
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1747
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationInterruptionStateProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1751
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1750
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1754
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1752
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1755
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1758
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1757
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1755
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1760
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1759
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1761
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1763
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1761
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1766
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1764
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationAlertingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1769
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1767
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1772
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1770
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1776
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1773
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1777
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1778
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1777
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1779
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1780
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1779
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1782
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1781
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1784
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1783
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1787
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1785
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1789
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1788
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1790
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1792
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1790
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1796
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1795
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1793
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1797
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1799
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1797
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1803
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1802
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1800
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1805
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1804
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1808
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1806
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1809
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1811
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1809
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1814
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1812
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1818
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1817
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1815
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1822
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1821
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1819
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoBrightnessController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1826
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1825
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1823
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartTouchController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1827
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1830
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1829
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1827
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRingerModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1833
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1831
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVpnController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1837
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1836
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1834
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenshotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1838
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1841
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1840
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1838
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDriveModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1845
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1844
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1842
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAcceleratorController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1849
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1848
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1846
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenRecordController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1850
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1853
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1852
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1850
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEyeProtectiveController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1856
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1854
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConnectionRateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1860
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1859
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1857
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMApplicationAccessControl(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1861
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1864
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1863
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1861
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1868
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$11900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1865
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPowerSaveController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1872
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1871
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1869
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMobileDataController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1876
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1875
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1873
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGameModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1877
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1880
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

    move-result-object p0

    .line 1879
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 1877
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMeizuShareController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .registers 2

    .line 1500
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
