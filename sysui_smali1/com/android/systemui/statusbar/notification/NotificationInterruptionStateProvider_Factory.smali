.class public final Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;
.super Ljava/lang/Object;
.source "NotificationInterruptionStateProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
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

.field private final filterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final stateControllerProvider:Ljavax/inject/Provider;
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
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->filterProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->filterProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-result-object p0

    return-object p0
.end method
