.class public final Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;
.super Ljava/lang/Object;
.source "NetworkControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
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

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
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
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-result-object p0

    return-object p0
.end method
