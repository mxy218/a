.class public final Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;
.super Ljava/lang/Object;
.source "NotificationGroupManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->get()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object p0

    return-object p0
.end method
