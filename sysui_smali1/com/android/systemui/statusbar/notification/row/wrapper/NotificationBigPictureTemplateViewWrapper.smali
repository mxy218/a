.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationBigPictureTemplateViewWrapper.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private updateImageTag(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.largeIcon.big"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_17

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;->updateImageTag(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
