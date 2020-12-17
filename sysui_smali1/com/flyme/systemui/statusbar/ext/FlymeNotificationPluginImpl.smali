.class public Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPluginImpl;
.super Ljava/lang/Object;
.source "FlymeNotificationPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNotificationStatusBarIcon(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 68
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 70
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 71
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4e

    .line 72
    :cond_38
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_third_app_notify:I

    .line 73
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getMeizuCustomizedIcon(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_4e

    .line 75
    invoke-static {p1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    const/4 p2, 0x0

    .line 76
    iput p2, p0, Landroid/app/Notification;->icon:I

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    :cond_4e
    return-void
.end method
