.class public final Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;
.super Ljava/lang/Object;
.source "MobileDataTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/flyme/systemui/qs/tiles/MobileDataTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileDataControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController;",
            ">;"
        }
    .end annotation
.end field

.field private final networkControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
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
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->networkControllerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->mobileDataControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController;",
            ">;)",
            "Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MobileDataTile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController;",
            ">;)",
            "Lcom/flyme/systemui/qs/tiles/MobileDataTile;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-direct {v0, p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/flyme/systemui/statusbar/policy/MobileDataController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/flyme/systemui/qs/tiles/MobileDataTile;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->networkControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->mobileDataControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile_Factory;->get()Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    move-result-object p0

    return-object p0
.end method
