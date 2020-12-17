.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;ILandroid/service/notification/StatusBarNotification;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iput p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$4:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$3:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;->f$4:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRemoved$2$NotificationListener(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method
