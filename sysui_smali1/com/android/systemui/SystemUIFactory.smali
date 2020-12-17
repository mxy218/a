.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIFactory$ContextHolder;
    }
.end annotation


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# instance fields
.field protected mRootComponent:Lcom/android/systemui/SystemUIRootComponent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .registers 4

    .line 71
    sget v0, Lcom/android/systemui/R$string;->config_systemUIFactoryComponent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_41

    .line 78
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIFactory;

    sput-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    .line 80
    sget-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIFactory;->init(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating SystemUIFactory component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIFactory"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No SystemUIFactory component configured"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/SystemUIFactory;",
            ">()TT;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIFactory;->buildSystemUIRootComponent(Landroid/content/Context;)Lcom/android/systemui/SystemUIRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/SystemUIRootComponent;

    .line 94
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/SystemUIRootComponent;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->initDependencies(Lcom/android/systemui/SystemUIRootComponent;)V

    return-void
.end method


# virtual methods
.method protected buildSystemUIRootComponent(Landroid/content/Context;)Lcom/android/systemui/SystemUIRootComponent;
    .registers 3

    .line 98
    invoke-static {}, Lcom/android/systemui/DaggerSystemUIRootComponent;->builder()Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/DependencyProvider;

    invoke-direct {v0}, Lcom/android/systemui/DependencyProvider;-><init>()V

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->dependencyProvider(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;

    new-instance v0, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    invoke-direct {v0, p1}, Lcom/android/systemui/SystemUIFactory$ContextHolder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent$Builder;->build()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object p0

    return-object p0
.end method

.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .registers 22

    .line 118
    new-instance v12, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 120
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v8

    .line 121
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    new-instance v11, Landroid/os/Handler;

    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;)V

    return-object v12
.end method

.method public createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .registers 4

    .line 146
    new-instance p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V

    return-object p0
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .registers 13

    .line 139
    new-instance p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 141
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    return-object p0
.end method

.method public createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ")",
            "Lcom/android/systemui/statusbar/phone/ScrimController;"
        }
    .end annotation

    .line 130
    new-instance v8, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    return-object v8
.end method

.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .registers 4

    .line 110
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    return-object p0
.end method

.method public getRootComponent()Lcom/android/systemui/SystemUIRootComponent;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/SystemUIRootComponent;

    return-object p0
.end method
