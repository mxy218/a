.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        ">;"
    }
.end annotation


# instance fields
.field private final cProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final noManProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
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
            "Landroid/app/INotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->cProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->noManProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/INotificationManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;-><init>(Landroid/content/Context;Landroid/app/INotificationManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->cProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->noManProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->get()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p0

    return-object p0
.end method
