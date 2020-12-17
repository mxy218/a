.class public final Lcom/android/systemui/DaggerSystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/SystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    }
.end annotation


# instance fields
.field private acceleratorControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private acceleratorTileProvider:Lcom/flyme/systemui/qs/tiles/AcceleratorTile_Factory;

.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private applicationAccessControlImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

.field private assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

.field private assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

.field private autoBrightnessControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private autoBrightnessTileProvider:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batteryControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

.field private bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

.field private cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

.field private connectionRateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;",
            ">;"
        }
    .end annotation
.end field

.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private developerOptionsTileProvider:Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile_Factory;

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

.field private dockManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private driveModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private driveModeTileProvider:Lcom/flyme/systemui/qs/tiles/DriveModeTile_Factory;

.field private dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private enhancedEstimatesImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimatesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private eyeProtectiveControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private eyeProtectiveTileProvider:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile_Factory;

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private gameModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private headsUpManagerPhoneProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardEnvironmentImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMonitorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private locationControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private meizuShareControllerImplProvider:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

.field private meizuShareTileProvider:Lcom/flyme/systemui/qs/tiles/MeizuShareTile_Factory;

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private mobileDataControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mobileDataTileProvider:Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;

.field private muteTileProvider:Lcom/flyme/systemui/qs/tiles/MuteTile_Factory;

.field private mzFlashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private nightModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nightModeTileProvider:Lcom/flyme/systemui/qs/tiles/NightModeTile_Factory;

.field private notificationAlertingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private notificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private phenotypeHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private powerSaveControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private powerSaveTileProvider:Lcom/flyme/systemui/qs/tiles/PowerSaveTile_Factory;

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

.field private provideAssistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSystemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private ringerModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private screenRecordControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private screenRecordTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile_Factory;

.field private screenshotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private screenshotTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenshotTile_Factory;

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private smartTouchControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private smartTouchTileProvider:Lcom/flyme/systemui/qs/tiles/SmartTouchTile_Factory;

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vibrateTileProvider:Lcom/flyme/systemui/qs/tiles/VibrateTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private vpnControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private vpnTileProvider:Lcom/flyme/systemui/qs/tiles/VpnTile_Factory;

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

.field private workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private zenModeTileProvider:Lcom/android/systemui/qs/tiles/ZenModeTile_Factory;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .registers 2

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->initialize(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    .line 674
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->initialize2(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 3

    .line 302
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoBrightnessControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartTouchControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ringerModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenshotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->driveModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->acceleratorControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenRecordControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->eyeProtectiveControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->connectionRateControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->applicationAccessControlImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerSaveControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mobileDataControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->gameModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->meizuShareControllerImplProvider:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mzFlashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;
    .registers 2

    .line 678
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method private getContextComponentResolver()Lcom/android/systemui/ContextComponentResolver;
    .registers 2

    .line 687
    new-instance v0, Lcom/android/systemui/ContextComponentResolver;

    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->getMapOfClassOfAndProviderOfObject()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/ContextComponentResolver;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private getMapOfClassOfAndProviderOfObject()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 682
    const-class p0, Lcom/android/systemui/doze/DozeService;

    .line 683
    invoke-static {}, Lcom/android/systemui/doze/DozeService_Factory;->create()Lcom/android/systemui/doze/DozeService_Factory;

    move-result-object v0

    .line 682
    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .registers 11

    .line 693
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 696
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;

    move-result-object v0

    .line 695
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 699
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 698
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 701
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideLeakReportEmailFactory;->create()Lcom/android/systemui/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 704
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v0

    .line 703
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 708
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 710
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v0

    .line 709
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 717
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->create()Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v0

    .line 716
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 719
    invoke-static {}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create()Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 723
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 722
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 721
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 724
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 726
    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/AsyncSensorManager_Factory;

    move-result-object v0

    .line 725
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 731
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 730
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;

    move-result-object v0

    .line 729
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 735
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 734
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    move-result-object v0

    .line 733
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 736
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 738
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v0

    .line 737
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 742
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 744
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v0

    .line 743
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    .line 745
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 746
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 749
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;

    move-result-object v0

    .line 748
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 752
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 751
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 754
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 756
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v0

    .line 755
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 760
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 762
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v0

    .line 761
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 764
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 766
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v0

    .line 765
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 768
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 769
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 771
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mzFlashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 773
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 774
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 776
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v0

    .line 775
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 782
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 784
    invoke-static {}, Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;->create()Lcom/android/systemui/power/EnhancedEstimatesImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 785
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->enhancedEstimatesImplProvider:Ljavax/inject/Provider;

    .line 787
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;

    move-result-object v0

    .line 786
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 792
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 791
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v0

    .line 790
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 793
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 794
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 796
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 800
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 799
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v0

    .line 798
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 801
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 802
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 803
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 804
    invoke-static {v0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistUtilsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    .line 806
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideBackgroundHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 807
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 808
    invoke-static {v0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    .line 809
    invoke-static {}, Lcom/android/systemui/assist/PhenotypeHelper_Factory;->create()Lcom/android/systemui/assist/PhenotypeHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->phenotypeHelperProvider:Ljavax/inject/Provider;

    .line 811
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;->create()Lcom/android/systemui/assist/AssistHandleOffBehavior_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    .line 813
    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 814
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 818
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 817
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v0

    .line 816
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 819
    invoke-static {}, Lcom/android/systemui/UiOffloadThread_Factory;->create()Lcom/android/systemui/UiOffloadThread_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 820
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 822
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 821
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 829
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 828
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 827
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 830
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 832
    invoke-static {v0, v1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 831
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 834
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 836
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl_Factory;

    move-result-object v0

    .line 835
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 837
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 839
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController_Factory;

    move-result-object v0

    .line 838
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 844
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 846
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v0

    .line 845
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 851
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 853
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v0

    .line 852
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 859
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 861
    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    move-result-object v0

    .line 860
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 866
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    .line 870
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    .line 869
    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object v0

    .line 868
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 874
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    .line 873
    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 875
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSystemClockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->phenotypeHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 877
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-result-object v0

    .line 876
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 886
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleOffBehaviorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleLikeHomeBehaviorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleReminderExpBehaviorProvider:Ljavax/inject/Provider;

    .line 888
    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    move-result-object v0

    .line 887
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    .line 892
    invoke-static {}, Lcom/android/systemui/DumpController_Factory;->create()Lcom/android/systemui/DumpController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 893
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideScreenDecorationsProvider:Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->phenotypeHelperProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistHandleBehaviorControllerMapProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 895
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

    move-result-object v0

    .line 894
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 904
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAssistUtilsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 906
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/assist/AssistManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistManager_Factory;

    move-result-object v0

    .line 905
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->assistManagerProvider:Ljavax/inject/Provider;

    .line 911
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 913
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v0

    .line 912
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 915
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 916
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 917
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 918
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 919
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 920
    invoke-static {p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 921
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 922
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 923
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 925
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 924
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 931
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 932
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 933
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 934
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 937
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v0

    .line 936
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 938
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 939
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 940
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 942
    invoke-static {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v0

    .line 941
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 944
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 946
    invoke-static {v0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v0

    .line 945
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 949
    invoke-static {}, Lcom/android/systemui/ForegroundServiceController_Factory;->create()Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 950
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 952
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v0

    .line 951
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 954
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 956
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v0

    .line 955
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 962
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;

    move-result-object v0

    .line 961
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 963
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 964
    invoke-static {v0}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 967
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;

    move-result-object v0

    .line 966
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 970
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object p1

    .line 969
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 972
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 974
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardEnvironmentImplProvider:Ljavax/inject/Provider;

    .line 975
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 977
    invoke-static {p1}, Lcom/android/systemui/SystemUIDefaultModule_ProvideShadeControllerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIDefaultModule_ProvideShadeControllerFactory;

    move-result-object p1

    .line 976
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    .line 978
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 980
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object p1

    .line 979
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 982
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 984
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object p1

    .line 983
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 986
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 987
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 989
    invoke-static {p1, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object p1

    .line 988
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 991
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 992
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 993
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 994
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 996
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;

    move-result-object p1

    .line 995
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 998
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 1000
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;

    move-result-object p1

    .line 999
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 1003
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1006
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;

    move-result-object p1

    .line 1005
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 1013
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1015
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;

    move-result-object p1

    .line 1014
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 1016
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 1018
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/SmartReplyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SmartReplyController_Factory;

    move-result-object p1

    .line 1017
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;

    move-result-object p1

    .line 1021
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 1030
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1032
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object p1

    .line 1031
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 1033
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1034
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationListener_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationListener_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 1035
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 1037
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 1039
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;

    move-result-object p1

    .line 1038
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    .line 1045
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1046
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create()Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 1048
    iget-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;

    move-result-object p1

    .line 1049
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)V
    .registers 39

    move-object/from16 v0, p0

    .line 1058
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/bubbles/BubbleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController_Factory;

    move-result-object v1

    .line 1059
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 1069
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1071
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v1

    .line 1070
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 1076
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-static/range {v2 .. v12}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;

    move-result-object v1

    .line 1077
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 1090
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 1091
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 1093
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v1

    .line 1092
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 1095
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 1097
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;

    move-result-object v1

    .line 1096
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    .line 1107
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1106
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;

    move-result-object v1

    .line 1105
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 1111
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1110
    invoke-static {v1, v2, v3}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v1

    .line 1109
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 1112
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-static {v1, v2, v3}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v1

    .line 1113
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 1120
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;

    move-result-object v1

    .line 1119
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 1121
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 1123
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v1

    .line 1122
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 1124
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->create()Lcom/android/systemui/dock/DockManagerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1125
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dockManagerImplProvider:Ljavax/inject/Provider;

    .line 1127
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v1

    .line 1126
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 1136
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1135
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 1134
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 1137
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1138
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 1142
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1141
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 1140
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 1143
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 1145
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 1144
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 1147
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1148
    invoke-static {v1, v2}, Lcom/android/systemui/util/ProximitySensor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/ProximitySensor_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

    .line 1149
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->proximitySensorProvider:Lcom/android/systemui/util/ProximitySensor_Factory;

    .line 1151
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v1

    .line 1150
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1156
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1157
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/AutoBrightnessControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoBrightnessControllerImplProvider:Ljavax/inject/Provider;

    .line 1158
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1159
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartTouchControllerImplProvider:Ljavax/inject/Provider;

    .line 1160
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1161
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ringerModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1162
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 1164
    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/VpnControllerImpl_Factory;

    move-result-object v1

    .line 1163
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnControllerImplProvider:Ljavax/inject/Provider;

    .line 1166
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1167
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/ScreenshotControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenshotControllerImplProvider:Ljavax/inject/Provider;

    .line 1168
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1169
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->driveModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1170
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1171
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->acceleratorControllerImplProvider:Ljavax/inject/Provider;

    .line 1172
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1173
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenRecordControllerImplProvider:Ljavax/inject/Provider;

    .line 1174
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1175
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->eyeProtectiveControllerImplProvider:Ljavax/inject/Provider;

    .line 1176
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1178
    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController_Factory;

    move-result-object v1

    .line 1177
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->connectionRateControllerProvider:Ljavax/inject/Provider;

    .line 1180
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1181
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControlImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->applicationAccessControlImplProvider:Ljavax/inject/Provider;

    .line 1182
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1183
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/NightModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1184
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1185
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerSaveControllerImplProvider:Ljavax/inject/Provider;

    .line 1186
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1188
    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl_Factory;

    move-result-object v1

    .line 1187
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mobileDataControllerImplProvider:Ljavax/inject/Provider;

    .line 1190
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1191
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->gameModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1192
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1193
    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->meizuShareControllerImplProvider:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

    .line 1194
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1196
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone_Factory;

    move-result-object v1

    .line 1195
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1200
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1202
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 1201
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 1207
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    .line 1209
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 1208
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 1210
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1212
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 1211
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 1219
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 1221
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier_Factory;

    move-result-object v1

    .line 1220
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bypassHeadsUpNotifierProvider:Ljavax/inject/Provider;

    .line 1229
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 1231
    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideKeyguardLiftControllerProvider:Ljavax/inject/Provider;

    .line 1235
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1236
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1237
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1238
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    .line 1242
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 1243
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    .line 1248
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1249
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    .line 1253
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1254
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    .line 1258
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1259
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    .line 1260
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1261
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    .line 1263
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 1264
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    .line 1266
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 1267
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    .line 1269
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mzFlashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 1270
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    .line 1272
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1273
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    .line 1278
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1279
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    .line 1285
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 1286
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    .line 1290
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 1291
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 1295
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1296
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    .line 1298
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 1299
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    .line 1301
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 1302
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NfcTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    .line 1303
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1304
    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 1305
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1306
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 1310
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoBrightnessControllerImplProvider:Ljavax/inject/Provider;

    .line 1311
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoBrightnessTileProvider:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;

    .line 1313
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartTouchControllerImplProvider:Ljavax/inject/Provider;

    .line 1314
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/SmartTouchTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartTouchTileProvider:Lcom/flyme/systemui/qs/tiles/SmartTouchTile_Factory;

    .line 1316
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ringerModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1317
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/MuteTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MuteTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->muteTileProvider:Lcom/flyme/systemui/qs/tiles/MuteTile_Factory;

    .line 1319
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->ringerModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1320
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/VibrateTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/VibrateTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibrateTileProvider:Lcom/flyme/systemui/qs/tiles/VibrateTile_Factory;

    .line 1322
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnControllerImplProvider:Ljavax/inject/Provider;

    .line 1323
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/VpnTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/VpnTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnTileProvider:Lcom/flyme/systemui/qs/tiles/VpnTile_Factory;

    .line 1324
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenshotControllerImplProvider:Ljavax/inject/Provider;

    .line 1325
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/ScreenshotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenshotTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenshotTile_Factory;

    .line 1327
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->driveModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1328
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/DriveModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/DriveModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->driveModeTileProvider:Lcom/flyme/systemui/qs/tiles/DriveModeTile_Factory;

    .line 1330
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->acceleratorControllerImplProvider:Ljavax/inject/Provider;

    .line 1331
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/AcceleratorTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->acceleratorTileProvider:Lcom/flyme/systemui/qs/tiles/AcceleratorTile_Factory;

    .line 1333
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenRecordControllerImplProvider:Ljavax/inject/Provider;

    .line 1334
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenRecordTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile_Factory;

    .line 1336
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1337
    invoke-static {v1}, Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile_Factory;->create(Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->developerOptionsTileProvider:Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile_Factory;

    .line 1338
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->eyeProtectiveControllerImplProvider:Ljavax/inject/Provider;

    .line 1339
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->eyeProtectiveTileProvider:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile_Factory;

    .line 1341
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1342
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/NightModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/NightModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightModeTileProvider:Lcom/flyme/systemui/qs/tiles/NightModeTile_Factory;

    .line 1344
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerSaveControllerImplProvider:Ljavax/inject/Provider;

    .line 1345
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/PowerSaveTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerSaveTileProvider:Lcom/flyme/systemui/qs/tiles/PowerSaveTile_Factory;

    .line 1347
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 1348
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/ZenModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ZenModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeTileProvider:Lcom/android/systemui/qs/tiles/ZenModeTile_Factory;

    .line 1350
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mobileDataControllerImplProvider:Ljavax/inject/Provider;

    .line 1351
    invoke-static {v1, v2, v3}, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mobileDataTileProvider:Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;

    .line 1355
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->meizuShareControllerImplProvider:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl_Factory;

    .line 1356
    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MeizuShareTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->meizuShareTileProvider:Lcom/flyme/systemui/qs/tiles/MeizuShareTile_Factory;

    .line 1358
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->colorInversionTileProvider:Lcom/android/systemui/qs/tiles/ColorInversionTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nfcTileProvider:Lcom/android/systemui/qs/tiles/NfcTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoBrightnessTileProvider:Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->smartTouchTileProvider:Lcom/flyme/systemui/qs/tiles/SmartTouchTile_Factory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->muteTileProvider:Lcom/flyme/systemui/qs/tiles/MuteTile_Factory;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vibrateTileProvider:Lcom/flyme/systemui/qs/tiles/VibrateTile_Factory;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->vpnTileProvider:Lcom/flyme/systemui/qs/tiles/VpnTile_Factory;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenshotTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenshotTile_Factory;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->driveModeTileProvider:Lcom/flyme/systemui/qs/tiles/DriveModeTile_Factory;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->acceleratorTileProvider:Lcom/flyme/systemui/qs/tiles/AcceleratorTile_Factory;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->screenRecordTileProvider:Lcom/flyme/systemui/qs/tiles/ScreenRecordTile_Factory;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->developerOptionsTileProvider:Lcom/flyme/systemui/qs/tiles/DeveloperOptionsTile_Factory;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->eyeProtectiveTileProvider:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile_Factory;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->nightModeTileProvider:Lcom/flyme/systemui/qs/tiles/NightModeTile_Factory;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->powerSaveTileProvider:Lcom/flyme/systemui/qs/tiles/PowerSaveTile_Factory;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->zenModeTileProvider:Lcom/android/systemui/qs/tiles/ZenModeTile_Factory;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->mobileDataTileProvider:Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->meizuShareTileProvider:Lcom/flyme/systemui/qs/tiles/MeizuShareTile_Factory;

    move-object/from16 v36, v1

    .line 1360
    invoke-static/range {v2 .. v36}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 1359
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 1396
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    .line 1397
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 1398
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 1408
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1409
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 1411
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 1410
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1421
    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v0}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    return-void
.end method

.method private injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;
    .registers 2

    .line 1462
    invoke-direct {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->getContextComponentResolver()Lcom/android/systemui/ContextComponentResolver;

    move-result-object p0

    .line 1461
    invoke-static {p1, p0}, Lcom/android/systemui/SystemUIAppComponentFactory_MembersInjector;->injectMComponentHelper(Lcom/android/systemui/SystemUIAppComponentFactory;Lcom/android/systemui/ContextComponentHelper;)V

    return-object p1
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .registers 3

    .line 1441
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .registers 3

    .line 1451
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .registers 1

    .line 1426
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/GarbageMonitor;

    return-object p0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .registers 3

    .line 1456
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .registers 3

    .line 1446
    new-instance v0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .registers 2

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->injectSystemUIAppComponentFactory(Lcom/android/systemui/SystemUIAppComponentFactory;)Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method
