.class Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 4

    .line 2152
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2155
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2156
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    monitor-exit v0

    return-void

    .line 2157
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_59

    .line 2158
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$5100(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 2159
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2160
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 2161
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$2200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2162
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-static {v3, v4, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$5200(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    .line 2163
    monitor-exit v1

    .line 2164
    goto :goto_22

    .line 2163
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v0

    .line 2165
    :cond_58
    return-void

    .line 2157
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method
