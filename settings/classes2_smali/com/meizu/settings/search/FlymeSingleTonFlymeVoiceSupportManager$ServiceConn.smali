.class Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;
.super Ljava/lang/Object;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-static {p2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Lcom/meizu/voiceassistant/support/IVoiceAssistantService;)Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    .line 153
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-static {p1, p2}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$102(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 155
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    new-instance p2, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$1;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;)V

    invoke-static {p1, p2}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$300(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 165
    invoke-static {}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$002(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Lcom/meizu/voiceassistant/support/IVoiceAssistantService;)Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    .line 169
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    new-instance v0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn$2;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$ServiceConn;)V

    invoke-static {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$300(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/Runnable;)V

    return-void
.end method
