.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;
.super Ljava/lang/Object;
.source "NotificationGutsManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->get()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object p0

    return-object p0
.end method
