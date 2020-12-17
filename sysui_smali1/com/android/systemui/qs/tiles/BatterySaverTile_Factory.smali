.class public final Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;
.super Ljava/lang/Object;
.source "BatterySaverTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final batteryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;"
        }
    .end annotation
.end field

.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
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
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tiles/BatterySaverTile;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->get()Lcom/android/systemui/qs/tiles/BatterySaverTile;

    move-result-object p0

    return-object p0
.end method
