.class public final Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;
.super Ljava/lang/Object;
.source "AutoBrightnessTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final autoBrightnessControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;",
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
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->autoBrightnessControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;",
            ">;)",
            "Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;",
            ">;)",
            "Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->hostProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->autoBrightnessControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile_Factory;->get()Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;

    move-result-object p0

    return-object p0
.end method
