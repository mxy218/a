.class final Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentService$FragmentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .registers 2

    .line 1918
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 3

    .line 1917
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method


# virtual methods
.method public createNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .registers 10

    .line 1922
    new-instance v8, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1923
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1924
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1925
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1926
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/assist/AssistManager;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1927
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1928
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1929
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>(Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v8
.end method

.method public createQSFragment()Lcom/flyme/systemui/qs/MzQSFragment;
    .registers 5

    .line 1934
    new-instance v0, Lcom/flyme/systemui/qs/MzQSFragment;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1935
    invoke-static {v1}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$8500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1936
    invoke-static {v2}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1938
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13200(Lcom/android/systemui/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v3

    .line 1937
    invoke-static {v3}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$FragmentCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1939
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/flyme/systemui/qs/MzQSFragment;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    return-object v0
.end method
