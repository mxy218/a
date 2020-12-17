.class Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;
.super Ljava/lang/Object;
.source "CornerAlphaOptimizedImageButton.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;->this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .registers 5

    .line 238
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    .line 240
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 241
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    .line 237
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 233
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;->compare(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    return p0
.end method
