.class Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;
.super Landroid/database/ContentObserver;
.source "SettingsUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 45
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 46
    iget-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$000(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "flymelab_flyme_night_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    move p2, v0

    .line 47
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nightMode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNightModeEnable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {v1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$100(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SettingsUpdateMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$100(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Z

    move-result p1

    if-eq p1, p2, :cond_52

    .line 49
    iget-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {p1, p2}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$102(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Z)Z

    .line 50
    iget-object p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$200(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_52
    return-void
.end method
