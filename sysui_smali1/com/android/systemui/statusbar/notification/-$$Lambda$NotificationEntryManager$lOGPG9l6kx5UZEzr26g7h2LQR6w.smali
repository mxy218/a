.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$lOGPG9l6kx5UZEzr26g7h2LQR6w;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->lambda$addNotificationInternal$1$NotificationEntryManager(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method