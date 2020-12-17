.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;
.super Ljava/lang/Object;
.source "NotificationLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final entryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final expansionStateLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
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

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;"
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;"
        }
    .end annotation

    .line 51
    new-instance v6, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 52
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener;

    .line 53
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/UiOffloadThread;

    .line 54
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 55
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 56
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/UiOffloadThread;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->notificationListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->uiOffloadThreadProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->entryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->expansionStateLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->get()Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    move-result-object p0

    return-object p0
.end method
