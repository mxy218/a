.class Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;
.super Ljava/lang/Object;
.source "AODNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationData"
.end annotation


# instance fields
.field hasCustomizedIcon:Z

.field iconId:I

.field isOnGoing:Z

.field isSystemApp:Z

.field isThirdAppNotify:Z

.field notifcationOrigPackage:Ljava/lang/String;

.field notifcationPackage:Ljava/lang/String;

.field notificaationId:Ljava/util/HashSet;

.field notificationDrawable:Landroid/graphics/drawable/Drawable;

.field notificationNums:I

.field priority:I

.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

.field time:J


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 432
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isThirdAppNotify:Z

    return-void
.end method
