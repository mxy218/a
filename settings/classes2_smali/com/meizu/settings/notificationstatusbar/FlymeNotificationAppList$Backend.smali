.class public Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;
.super Ljava/lang/Object;
.source "FlymeNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "notification"

    .line 706
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 705
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .registers 3

    .line 720
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_9
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 723
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPackageDesktopNewTipsEnable(Ljava/lang/String;I)Z
    .registers 4

    const/4 p0, 0x0

    .line 835
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_8

    return p0

    .line 838
    :cond_8
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p1

    const-string p2, "FlymeNotificationAppList"

    const-string v0, "Error calling NoMan"

    .line 840
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .registers 3

    .line 772
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 774
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .registers 3

    .line 789
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 791
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserFilter(Ljava/lang/String;)I
    .registers 3

    .line 807
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getUserFilterSP(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string v0, "Error calling NoMan"

    .line 809
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .registers 6

    const/4 p0, 0x0

    .line 710
    :try_start_1
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    if-nez p3, :cond_8

    move p3, v1

    goto :goto_9

    :cond_8
    move p3, p0

    :goto_9
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception p1

    const-string p2, "FlymeNotificationAppList"

    const-string p3, "Error calling NoMan"

    .line 713
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public setPackageDesktopNewTipsEnable(Ljava/lang/String;IZ)V
    .registers 4

    .line 847
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 849
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .registers 4

    .line 781
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 783
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .registers 4

    .line 798
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setPackageRemindEnable(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 800
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setUserFilter(Ljava/lang/String;II)V
    .registers 4

    .line 817
    :try_start_0
    sget-object p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setUserFilterSP(Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "FlymeNotificationAppList"

    const-string p2, "Error calling NoMan"

    .line 819
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
