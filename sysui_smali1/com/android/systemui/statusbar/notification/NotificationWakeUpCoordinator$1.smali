.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;",
        "onFullyHiddenChanged",
        "",
        "isFullyHidden",
        "",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullyHiddenChanged(Z)V
    .registers 2

    if-eqz p1, :cond_10

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->access$getMNotificationsVisibleForExpansion$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    :cond_10
    return-void
.end method
