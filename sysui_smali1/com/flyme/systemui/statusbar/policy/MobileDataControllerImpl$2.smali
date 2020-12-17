.class Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubReceiver action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_9e

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_9e

    :cond_3d
    const-string v0, "android.intent.action.RADIO_TECHNOLOGY"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 346
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    goto/16 :goto_f8

    :cond_4c
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 348
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string/jumbo v0, "state"

    .line 349
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 350
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$1300(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z

    move-result p2

    if-eq p2, p1, :cond_f8

    .line 351
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p2, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$1302(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z

    .line 352
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    goto/16 :goto_f8

    :cond_76
    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8e

    const-string p2, "android.intent.action.ACTION_MAIN_SLOT_CHANGED"

    .line 355
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8e

    const-string p2, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    .line 356
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 357
    :cond_8e
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$702(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z

    const-string p1, "[foree] onReceive: switch done"

    .line 358
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    goto :goto_f8

    .line 328
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)I

    move-result p1

    if-le p1, v3, :cond_f8

    .line 329
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$202(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;[I)[I

    .line 330
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$402(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;J)J

    .line 332
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 334
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$602(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;I)I

    .line 336
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$600(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)I

    move-result p1

    if-nez p1, :cond_dc

    .line 337
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$702(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z

    .line 339
    :cond_dc
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$800(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 340
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$1000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$902(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z

    .line 341
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$1200(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$1102(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z

    .line 342
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    :cond_f8
    :goto_f8
    return-void
.end method
