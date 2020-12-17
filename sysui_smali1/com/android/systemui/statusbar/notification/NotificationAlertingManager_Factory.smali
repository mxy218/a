.class public final Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;
.super Ljava/lang/Object;
.source "NotificationAlertingManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
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
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;"
        }
    .end annotation

    .line 76
    new-instance v7, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;"
        }
    .end annotation

    .line 60
    new-instance v7, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 62
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 63
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 64
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 65
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 66
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/NotificationListener;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/NotificationListener;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;
    .registers 7

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->remoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;

    move-result-object p0

    return-object p0
.end method
