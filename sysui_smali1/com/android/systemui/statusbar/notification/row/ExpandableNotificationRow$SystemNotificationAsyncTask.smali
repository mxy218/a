.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemNotificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 3326
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$1;)V
    .registers 3

    .line 3326
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 2

    .line 3330
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$2400(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$2500(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3326
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 3335
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3336
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsSystemNotification:Ljava/lang/Boolean;

    :cond_10
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 3326
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$SystemNotificationAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
