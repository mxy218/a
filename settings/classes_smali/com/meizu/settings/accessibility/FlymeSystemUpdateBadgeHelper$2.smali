.class Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;
.super Ljava/lang/Object;
.source "FlymeSystemUpdateBadgeHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "FlymeSystemUpdateBadgeHelper"

    const-string/jumbo v0, "onServiceConnected"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {p2}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$102(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;Lcom/meizu/flyme/update/IQueryUpdateService;)Lcom/meizu/flyme/update/IQueryUpdateService;

    .line 57
    :try_start_11
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$100(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$200(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$300(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/meizu/flyme/update/IQueryUpdateService;->registerListener(Ljava/lang/String;Lcom/meizu/flyme/update/IUpdateChangeListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    const-string/jumbo p2, "onServiceConnected registerListener faid"

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_2d
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-virtual {p1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->queryUpdate()Z

    move-result p1

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$000(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "FlymeSystemUpdateBadgeHelper"

    const-string/jumbo v0, "onServiceDisconnected"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$102(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;Lcom/meizu/flyme/update/IQueryUpdateService;)Lcom/meizu/flyme/update/IQueryUpdateService;

    return-void
.end method
