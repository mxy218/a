.class public final Lcom/android/systemui/util/ProximitySensor_Factory;
.super Ljava/lang/Object;
.source "ProximitySensor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/ProximitySensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/util/ProximitySensor_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 16
    iput-object p2, p0, Lcom/android/systemui/util/ProximitySensor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/ProximitySensor_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/util/ProximitySensor_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/util/ProximitySensor_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ProximitySensor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/ProximitySensor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;)",
            "Lcom/android/systemui/util/ProximitySensor;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/android/systemui/util/ProximitySensor;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/AsyncSensorManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/ProximitySensor;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/util/ProximitySensor_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/ProximitySensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/ProximitySensor_Factory;->get()Lcom/android/systemui/util/ProximitySensor;

    move-result-object p0

    return-object p0
.end method
