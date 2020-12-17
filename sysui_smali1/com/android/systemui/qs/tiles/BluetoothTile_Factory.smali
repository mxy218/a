.class public final Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;
.super Ljava/lang/Object;
.source "BluetoothTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tiles/BluetoothTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->bluetoothControllerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    .line 43
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 45
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    .line 46
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Looper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tiles/BluetoothTile;
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->bluetoothControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->get()Lcom/android/systemui/qs/tiles/BluetoothTile;

    move-result-object p0

    return-object p0
.end method
