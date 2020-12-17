.class public final Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
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

.field private final lockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
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

.field private final smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;"
        }
    .end annotation

    .line 85
    new-instance v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;"
        }
    .end annotation

    .line 67
    new-instance v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 68
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 69
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 70
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 71
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 72
    invoke-static {p4}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    .line 73
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 74
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/os/Handler;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .registers 8

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->lockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->notificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->get()Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    return-object p0
.end method
