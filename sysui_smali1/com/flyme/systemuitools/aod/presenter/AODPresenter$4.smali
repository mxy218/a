.class Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;
.super Landroid/content/BroadcastReceiver;
.source "AODPresenter.java"


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

    .line 239
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto/16 :goto_196

    :cond_e
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto/16 :goto_196

    :cond_18
    const-string p2, "com.flyme.aod.refresh"

    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "AODPresenter"

    const/4 v2, 0x1

    if-eqz p2, :cond_8d

    .line 245
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 246
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, v2, p2}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setLightSensorEnabled(ZI)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "time is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1000(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)J

    move-result-wide v3

    sub-long/2addr p1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long p1, p1, v3

    if-lez p1, :cond_70

    .line 252
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1002(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;J)J

    move v0, v2

    .line 254
    :cond_70
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    goto/16 :goto_196

    :cond_8d
    const-string p2, "android.intent.action.TIME_TICK"

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_196

    const-string p2, "android.intent.action.TIME_SET"

    .line 259
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_196

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a7

    goto/16 :goto_196

    :cond_a7
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 263
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0, v2}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1202(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;Z)Z

    goto/16 :goto_196

    :cond_b6
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 264
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_db

    .line 265
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    move-result-object p1

    instance-of p1, p1, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    if-eqz p1, :cond_196

    .line 266
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1300(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Lcom/flyme/systemuitools/aod/view/IAODDisplay;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/view/AODDisplayImpl;->saveCurPosition(Landroid/content/Context;)V

    goto/16 :goto_196

    :cond_db
    const-string p2, "com.flyme.aod.sleep.exit"

    .line 268
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 269
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 270
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_196

    :cond_f5
    const-string p2, "com.flyme.aod.sleep.enter"

    .line 271
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 272
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 273
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_196

    :cond_10e
    const-string p2, "com.flyme.aod.pocket.enter"

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_127

    .line 275
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$900(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    .line 276
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$100(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_196

    :cond_127
    const-string p2, "delay_dismiss_fingerprint"

    .line 277
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15f

    .line 278
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->setAuthenticationAcquire(Z)V

    .line 279
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->canDisMissFp()Z

    move-result p1

    if-eqz p1, :cond_196

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    .line 280
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_196

    const-string p1, "receive delay showfingerprint broadcast"

    .line 281
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    goto :goto_196

    :cond_15f
    const-string p2, "delay_dismiss_fingerprint_for_motion"

    .line 284
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_196

    .line 285
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1400(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Z

    move-result p1

    if-eqz p1, :cond_196

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getFingerprintVisibility()Z

    move-result p1

    if-eqz p1, :cond_196

    const-string p1, "receive delay showfingerprint broadcast for motion"

    .line 286
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$800(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->registerRaiseSensor()V

    .line 288
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODPresenter$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/AODPresenter;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/AODPresenter;->access$1500(Lcom/flyme/systemuitools/aod/presenter/AODPresenter;)V

    :cond_196
    :goto_196
    return-void
.end method
