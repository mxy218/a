.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
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
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->get()Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-result-object p0

    return-object p0
.end method
