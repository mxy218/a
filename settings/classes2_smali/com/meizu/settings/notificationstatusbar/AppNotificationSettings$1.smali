.class Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;
.super Landroid/database/ContentObserver;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;Landroid/os/Handler;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    .line 104
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$000(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_notification_filter_value"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: 广播，value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppNotificationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_29

    return-void

    :cond_29
    const-string v0, ","

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 111
    aget-object v0, p1, v0

    const/4 v2, 0x1

    .line 112
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 113
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_58

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: 广播，from="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    if-eqz v0, :cond_8c

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$100(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    if-eqz v3, :cond_8c

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$200(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/preference/ListPreference;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$200(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$200(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/preference/ListPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->access$200(Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;)Landroid/preference/ListPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8c
    return-void
.end method
