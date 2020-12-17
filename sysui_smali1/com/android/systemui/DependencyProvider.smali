.class public Lcom/android/systemui/DependencyProvider;
.super Ljava/lang/Object;
.source "DependencyProvider.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideActivityManagerWrapper()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 204
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .registers 3
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 198
    new-instance p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 2
    .param p1  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_handler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 92
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public provideBgLooper()Landroid/os/Looper;
    .registers 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background_looper"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 82
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiBg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 85
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public provideConfigurationController(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 191
    new-instance p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 105
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    return-object p0
.end method

.method public provideDevicePolicyManagerWrapper()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 210
    invoke-static {}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 152
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0
.end method

.method public provideHandler()Landroid/os/Handler;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "time_tick_handler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 73
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "TimeTick"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public provideINotificationManager()Landroid/app/INotificationManager;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string p0, "notification"

    .line 144
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 143
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public provideIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string/jumbo p0, "statusbar"

    .line 136
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public provideIWindowManager()Landroid/view/IWindowManager;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 129
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 164
    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .registers 3
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const/4 p0, 0x0

    .line 116
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public provideMainHandler()Landroid/os/Handler;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main_handler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 99
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public provideMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 123
    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object p0
.end method

.method public provideNavigationBarController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/NavigationBarController;
    .registers 3
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 185
    new-instance p0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NavigationBarController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public provideNightDisplayListener(Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;
    .registers 3
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 172
    new-instance p0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public providePackageManagerWrapper()Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .registers 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 216
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public providePluginManager(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginManager;
    .registers 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 178
    new-instance p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    new-instance v0, Lcom/android/systemui/plugins/PluginInitializerImpl;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginInitializerImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-object p0
.end method

.method public provideSensorPrivacyManager(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 158
    const-class p0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method
