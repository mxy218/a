.class Lcom/meizu/settings/MzSimCardStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MzSimCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/MzSimCardStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSimCardStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/MzSimCardStatus;)V
    .registers 2

    .line 428
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 3

    .line 442
    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p2, p1}, Lcom/meizu/settings/MzSimCardStatus;->access$902(Lcom/meizu/settings/MzSimCardStatus;I)I

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDataConnectionStateChanged mDataState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p2}, Lcom/meizu/settings/MzSimCardStatus;->access$900(Lcom/meizu/settings/MzSimCardStatus;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GeminiSimCardStatus"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p1}, Lcom/meizu/settings/MzSimCardStatus;->access$1000(Lcom/meizu/settings/MzSimCardStatus;)V

    .line 446
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p0}, Lcom/meizu/settings/MzSimCardStatus;->access$800(Lcom/meizu/settings/MzSimCardStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {v0, p1}, Lcom/meizu/settings/MzSimCardStatus;->access$602(Lcom/meizu/settings/MzSimCardStatus;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 437
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p1}, Lcom/meizu/settings/MzSimCardStatus;->access$700(Lcom/meizu/settings/MzSimCardStatus;)V

    .line 438
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p0}, Lcom/meizu/settings/MzSimCardStatus;->access$800(Lcom/meizu/settings/MzSimCardStatus;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {v0, p1}, Lcom/meizu/settings/MzSimCardStatus;->access$502(Lcom/meizu/settings/MzSimCardStatus;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 432
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus$2;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-virtual {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateSignalStrength()V

    return-void
.end method
