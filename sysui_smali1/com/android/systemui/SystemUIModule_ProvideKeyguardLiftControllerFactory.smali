.class public final Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;
.super Ljava/lang/Object;
.source "SystemUIModule_ProvideKeyguardLiftControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;"
        }
    .end annotation

    .line 42
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 43
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 44
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/AsyncSensorManager;

    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->proxyProvideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .registers 3

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/systemui/SystemUIModule;->provideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIModule_ProvideKeyguardLiftControllerFactory;->get()Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method
