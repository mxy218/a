.class Lcom/android/systemui/statusbar/NotificationMediaManager$1;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 146
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "compact_media_notification_seekbar_enabled"

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$002(Lcom/android/systemui/statusbar/NotificationMediaManager;Z)Z

    goto :goto_8

    :cond_2e
    return-void
.end method
