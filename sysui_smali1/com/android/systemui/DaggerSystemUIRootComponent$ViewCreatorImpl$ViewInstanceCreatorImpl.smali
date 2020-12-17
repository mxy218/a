.class final Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

.field private viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .registers 3

    .line 1957
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1958
    invoke-direct {p0, p2}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 4

    .line 1952
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .registers 2

    .line 1964
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method


# virtual methods
.method public creatNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .registers 3

    .line 2035
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2037
    invoke-static {v1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    .line 2036
    invoke-static {v1}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2039
    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .registers 8

    .line 2044
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2046
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2048
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2049
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2050
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2051
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .registers 4

    .line 2067
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2069
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2071
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2072
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .registers 5

    .line 2056
    new-instance v0, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2058
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2060
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2061
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2062
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .registers 13

    .line 2077
    new-instance v11, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2079
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2081
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2082
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2083
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2084
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2085
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2086
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2087
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2088
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/dock/DockManager;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2089
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    return-object v11
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .registers 14

    .line 1991
    new-instance v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1993
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1995
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1996
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1997
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1998
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1999
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2000
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2001
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2002
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2003
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2004
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v12
.end method

.method public createPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .registers 11

    .line 2009
    new-instance v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2011
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2013
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2014
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2015
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2016
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2017
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2018
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2019
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V

    return-object v9
.end method

.method public createQSCarrierGroup()Lcom/android/systemui/qs/QSCarrierGroup;
    .registers 5

    .line 2024
    new-instance v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2026
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2028
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2029
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2030
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public createQSCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .registers 8

    .line 2114
    new-instance v6, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2116
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    .line 2115
    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2118
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2119
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2120
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2121
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    return-object v6
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .registers 4

    .line 2094
    new-instance v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2096
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2098
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2099
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .registers 8

    .line 1979
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1981
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1983
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1984
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1985
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1986
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;
    .registers 4

    .line 1969
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1971
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1973
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1974
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .registers 4

    .line 2104
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2106
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2108
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 2109
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method
