.class final Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V
    .registers 2

    .line 1886
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIRootComponent$1;)V
    .registers 3

    .line 1885
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIRootComponent;)V

    return-void
.end method

.method private injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .registers 3

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1895
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12300(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/InjectionInflationController;

    .line 1894
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V

    .line 1896
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1897
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12400(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1896
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    .line 1898
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1899
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12500(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 1898
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1901
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12600(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 1900
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMKeyguardBypassController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1903
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12700(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1902
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMHeadsUpManager(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1905
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12800(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 1904
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMDynamicPrivacyController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V

    .line 1906
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1907
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$12900(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;

    .line 1906
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMBypassHeadsUpNotifier(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/BypassHeadsUpNotifier;)V

    .line 1908
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1909
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13000(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 1908
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMKeyguardLiftController(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    .line 1910
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIRootComponent;

    .line 1912
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIRootComponent;->access$13100(Lcom/android/systemui/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1910
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMAllowNotificationLongPress(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    return-object p1
.end method


# virtual methods
.method public createStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 1890
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIRootComponent$StatusBarInjectorImpl;->injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
