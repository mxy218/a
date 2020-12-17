.class Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 46
    iget-object p1, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p1}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$000(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->setLockWallpaperState(I)V

    .line 47
    iget-object p0, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$100(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6a

    :cond_3a
    const-string v0, "com.meizu.flyme.launcher_mask"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 p1, 0x0

    const-string v0, "isAddMask"

    .line 49
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p2}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$100(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object p2, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p2}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$100(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor$1;->this$0:Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->access$100(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6a
    :goto_6a
    return-void
.end method
