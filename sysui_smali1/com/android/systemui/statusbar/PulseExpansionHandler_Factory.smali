.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;
.super Ljava/lang/Object;
.source "PulseExpansionHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final bypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
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

.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;"
        }
    .end annotation
.end field

.field private final roundnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
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

.field private final wakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->wakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->roundnessManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;"
        }
    .end annotation

    .line 75
    new-instance v7, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;"
        }
    .end annotation

    .line 59
    new-instance v7, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 60
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 61
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 62
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 63
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 64
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 65
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/PulseExpansionHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->wakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->bypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->roundnessManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->get()Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object p0

    return-object p0
.end method
