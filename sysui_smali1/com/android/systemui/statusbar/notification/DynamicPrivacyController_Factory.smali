.class public final Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;
.super Ljava/lang/Object;
.source "DynamicPrivacyController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
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

.field private final keyguardMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->keyguardMonitorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 47
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 48
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 49
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 50
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->keyguardMonitorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->get()Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    return-object p0
.end method
