.class public final Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;
.super Ljava/lang/Object;
.source "StatusBarWindowController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 45
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 46
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 47
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 48
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->get()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object p0

    return-object p0
.end method
