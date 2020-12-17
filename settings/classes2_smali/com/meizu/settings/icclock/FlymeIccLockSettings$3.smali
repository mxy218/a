.class Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;
.super Ljava/lang/Object;
.source "FlymeIccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/icclock/FlymeIccLockSettings;->tryChangeIccLockState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Landroid/os/Message;)V
    .registers 3

    .line 437
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    iput-object p2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 440
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$800(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Lcom/meizu/settings/icclock/FlymeIIcclock;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$600(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Z

    move-result v1

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$700(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v3}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$300(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/settings/icclock/FlymeIIcclock;->setIccLockEnabled(ZLjava/lang/String;I)Z

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->val$msg:Landroid/os/Message;

    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 442
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->val$msg:Landroid/os/Message;

    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$800(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Lcom/meizu/settings/icclock/FlymeIIcclock;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$300(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/meizu/settings/icclock/FlymeIIcclock;->getRemainTimes(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 444
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$500(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$3;->val$msg:Landroid/os/Message;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
