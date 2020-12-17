.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;
.super Ljava/lang/Object;
.source "FlymeNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefeshAppsListRunnable"
.end annotation


# instance fields
.field mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;->mSortedRows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;->mSortedRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 699
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$1400(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/util/ArrayList;)V

    :cond_9
    return-void
.end method
