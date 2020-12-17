.class Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;
.super Ljava/lang/Object;
.source "ScheduledPowerReciever.java"

# interfaces
.implements Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;


# direct methods
.method constructor <init>(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChange(Z)V
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScheduledPowerReciever"

    invoke-static {v1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_30

    .line 110
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->access$000(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 112
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->access$100(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->removeListener(Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;)V

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->access$200(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;I)V

    :cond_30
    return-void
.end method
