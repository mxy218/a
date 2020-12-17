.class Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;
.super Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback$Stub;
.source "FlymeSingleTonFlymeVoiceSupportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    invoke-direct {p0}, Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "error_msg"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    new-instance v1, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$2;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$300(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "result_iat_rawtext"

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;->this$0:Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;

    new-instance v1, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1$1;-><init>(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;->access$300(Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager;Ljava/lang/Runnable;)V

    return-void
.end method
