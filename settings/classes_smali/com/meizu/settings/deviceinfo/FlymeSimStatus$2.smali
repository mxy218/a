.class Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "FlymeSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Ljava/lang/Integer;)V
    .registers 3

    .line 435
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .registers 2

    .line 438
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$200(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    .line 439
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$300(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2

    .line 449
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$400(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2

    .line 444
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method
