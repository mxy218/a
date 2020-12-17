.class Lcom/android/systemui/assist/AssistManager$4;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetUiHints(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "action"

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "show_assist_handles"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 218
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->requestAssistHandles()V

    :cond_14
    return-void
.end method

.method public onVoiceSessionHidden()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVoiceSessionShown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
