.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$2;
.super Ljava/lang/Object;
.source "FlymeNotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)I
    .registers 3

    .line 493
    iget-object p0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->lableToPinyin:Ljava/lang/String;

    iget-object p1, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->lableToPinyin:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->getCompareResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 490
    check-cast p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    check-cast p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$2;->compare(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)I

    move-result p0

    return p0
.end method
