.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;
.super Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;
.source "NotificationContentInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteView()Landroid/widget/RemoteViews;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public setResultView(Landroid/view/View;)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1002(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
