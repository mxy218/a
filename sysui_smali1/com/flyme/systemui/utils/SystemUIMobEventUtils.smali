.class public Lcom/flyme/systemui/utils/SystemUIMobEventUtils;
.super Ljava/lang/Object;
.source "SystemUIMobEventUtils.java"


# static fields
.field private static mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;


# direct methods
.method public static checkProxyValid(Landroid/content/Context;)V
    .registers 2

    .line 447
    sget-object p0, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    if-nez p0, :cond_11

    const-string p0, "SystemUIMobEventUtils"

    const-string v0, "UsageStatsProxy invalid, construct ..."

    .line 448
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Lcom/meizu/statsapp/v3/USPMultiProcess3;->getInstance()Lcom/meizu/statsapp/v3/USPMultiProcess3;

    move-result-object p0

    sput-object p0, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    :cond_11
    return-void
.end method

.method public static collcetScreenshotEnter(Landroid/content/Context;)V
    .registers 2

    .line 601
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    const-string p0, "screenshot_float_show"

    const/4 v0, 0x0

    .line 602
    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static collcetScreenshotKeydown(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 577
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 578
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "gesture_type"

    .line 579
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "display_id"

    .line 580
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scroll_screenshot"

    .line 581
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "screenshot_keydown"

    const/4 p2, 0x0

    .line 582
    invoke-static {p1, p2, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectDNDTimeSelect(I)V
    .registers 3

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 918
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "time"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dnd_time_select"

    const/4 v1, 0x0

    .line 919
    invoke-static {p0, v1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectNavigationBarState(Landroid/content/Context;)V
    .registers 6

    .line 830
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_show_navigation_bar"

    .line 832
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    if-eqz v1, :cond_1e

    const/4 v3, -0x2

    const-string v4, "mz_use_flyme_navigation_bar"

    .line 833
    invoke-static {p0, v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x2

    :goto_1f
    const-string v4, "mz_navigation_simple_gesture"

    .line 834
    invoke-static {p0, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_28

    move v0, v2

    :cond_28
    if-nez v1, :cond_2d

    if-eqz v0, :cond_2d

    const/4 v3, 0x3

    .line 838
    :cond_2d
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 839
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "navigation_bar_state"

    .line 840
    invoke-static {v1, v0, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectNavigationBarStateAfterP(Landroid/content/Context;Z)V
    .registers 3

    if-eqz p1, :cond_2f

    .line 862
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 863
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0080

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x3

    if-eqz p0, :cond_1a

    if-eq p0, p1, :cond_19

    const/4 p1, 0x2

    move p1, v0

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 876
    :cond_1a
    :goto_1a
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 877
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mode"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "navigation_bar_state"

    .line 878
    invoke-static {v0, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_32

    .line 880
    :cond_2f
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectNavigationBarState(Landroid/content/Context;)V

    :goto_32
    return-void
.end method

.method public static collectNotificationFilter(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 694
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 695
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 697
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getManagement(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->isUploadWhiteApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_43

    .line 701
    :cond_18
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PackageName"

    .line 702
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x0

    :cond_2a
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object p1, p1, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    const-string v0, "category"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "notification_filter"

    .line 705
    invoke-static {v0, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_43
    :goto_43
    const-string p0, "SystemUIMobEventUtils"

    const-string p1, "packageName cannot be null and null-string, or packageName is not white pkg"

    .line 698
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static collectNotificationFilterByUser(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Z)V
    .registers 5

    .line 709
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 710
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "SystemUIMobEventUtils"

    const-string p1, "collectNotificationFilterByUser, packageName cannot be null and null-string"

    .line 712
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 715
    :cond_15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PackageName"

    .line 716
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object p0, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object p0, p0, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    const-string v1, "category"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->getNotificationUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "key"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3a

    const-string p0, "notification_filter_remove"

    goto :goto_3c

    :cond_3a
    const-string p0, "notification_filter_add"

    :goto_3c
    const/4 p1, 0x0

    .line 719
    invoke-static {p0, p1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .line 218
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    if-eqz p1, :cond_2c

    const-string p0, ""

    .line 219
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 223
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "shortcut_name"

    .line 224
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1d

    const-string p1, "on"

    goto :goto_1f

    :cond_1d
    const-string p1, "off"

    :goto_1f
    const-string p2, "on_off_state"

    .line 225
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p2, "shortcut_state"

    .line 226
    invoke-static {p2, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 220
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "shortCutName cannot be null or null-string!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collectPopClick(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 792
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    if-eqz p1, :cond_1e

    const-string p0, ""

    .line 793
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 796
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "PackageName"

    .line 797
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "bubble_notify_click"

    .line 798
    invoke-static {v0, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 794
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName cannot be null or null-string!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collectPopShow(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 802
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    if-eqz p1, :cond_1e

    const-string p0, ""

    .line 803
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 806
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "PackageName"

    .line 807
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "bubble_notify_show"

    .line 808
    invoke-static {v0, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 804
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName cannot be null or null-string!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collectQuickReplyClick(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 734
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "SystemUIMobEventUtils"

    const-string p1, "collectQuickReplyClick, packageName cannot be null or null-string!"

    .line 736
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 739
    :cond_11
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "PackageName"

    .line 740
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "quick_reply_click"

    .line 741
    invoke-static {v0, p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectScreenshotWindow(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 616
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 618
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "from"

    const-string v1, "0"

    .line 619
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    .line 620
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "from_window"

    const/4 v0, 0x0

    .line 621
    invoke-static {p1, v0, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static collectShortcutSetting(Landroid/content/Context;)V
    .registers 2

    .line 755
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    const-string/jumbo p0, "shortcut_setting"

    const/4 v0, 0x0

    .line 756
    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventOnly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static collectWirelessCharge(I)V
    .registers 4

    .line 923
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 924
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "supercharge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectWirelessCharge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemUIMobEventUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "wireless_charging"

    const/4 v1, 0x0

    .line 926
    invoke-static {p0, v1, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static onEventOnly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 462
    sget-object p1, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    if-eqz p1, :cond_20

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIMobEventUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object p1, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/meizu/statsapp/v3/USPMultiProcess3;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_20
    return-void
.end method

.method public static onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 470
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 473
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 474
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "type"

    .line 475
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "smarttouch"

    const/4 v0, 0x0

    .line 476
    invoke-static {p1, v0, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    return-void
.end method

.method public static onEventSmartTouchGesture(Landroid/content/Context;I)V
    .registers 3

    .line 486
    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 487
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 488
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gesture_type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "smarttouch_gesture"

    const/4 v0, 0x0

    .line 489
    invoke-static {p1, v0, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static onEventWithProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 455
    sget-object p1, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    if-eqz p1, :cond_2c

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", properties = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIMobEventUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object p1, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/USPMultiProcess3;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lcom/meizu/statsapp/v3/USPMultiProcess3;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2c
    return-void
.end method
