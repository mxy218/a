.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;
.super Ljava/lang/Object;
.source "AODPresenter.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/AODPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLightChanged(F)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v1

    if-eq v0, v1, :cond_8d

    .line 199
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->isDarkenLight()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$302(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightChanged now is dark? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLightChanged come to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "dark"

    goto :goto_56

    :cond_54
    const-string v2, "light"

    :goto_56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", light = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v1

    .line 207
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p0

    const/4 v2, -0x1

    .line 206
    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8d
    return-void
.end method

.method public onProximityChanged(Z)V
    .registers 7

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProximityChanged active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPocketModeTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    .line 182
    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AODPresenter"

    .line 181
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProximityChanged close ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    .line 185
    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$200(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLog(Ljava/lang/String;)V

    if-eqz p1, :cond_54

    .line 187
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$202(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;J)J

    goto :goto_5b

    .line 189
    :cond_54
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$202(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;J)J

    .line 191
    :goto_5b
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$2;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
