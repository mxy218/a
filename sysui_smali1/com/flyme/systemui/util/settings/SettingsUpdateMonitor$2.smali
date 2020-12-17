.class Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$2;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_f

    .line 60
    :cond_6
    iget-object p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$2;->this$0:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$100(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->access$300(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Z)V

    :goto_f
    return-void
.end method
