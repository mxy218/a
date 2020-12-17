.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_26e

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_264

    const/16 v1, 0x15a

    if-eq v0, v1, :cond_21f

    const/16 v1, 0x202

    const-string v2, "FindPhone"

    if-eq v0, v1, :cond_1c8

    const/16 v1, 0x203

    if-eq v0, v1, :cond_1a7

    packed-switch v0, :pswitch_data_274

    packed-switch v0, :pswitch_data_27e

    packed-switch v0, :pswitch_data_288

    packed-switch v0, :pswitch_data_292

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2a2

    packed-switch v0, :pswitch_data_2c0

    packed-switch v0, :pswitch_data_2cc

    .line 452
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_273

    .line 407
    :pswitch_34  #0x211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 408
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    goto/16 :goto_273

    .line 403
    :pswitch_40  #0x210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_47

    move v1, v2

    :cond_47
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 404
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 448
    :pswitch_51  #0x20f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 445
    :pswitch_58  #0x20c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 442
    :pswitch_5f  #0x20b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 421
    :pswitch_66  #0x209
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 423
    :pswitch_6b  #0x20a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 303
    :pswitch_72  #0x153
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_273

    .line 399
    :pswitch_7d  #0x152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto/16 :goto_273

    .line 396
    :pswitch_8c  #0x151
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 393
    :pswitch_93  #0x150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 390
    :pswitch_9a  #0x14f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAssistantVisible(Z)V

    goto/16 :goto_273

    .line 387
    :pswitch_a9  #0x14e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 384
    :pswitch_b0  #0x14d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_273

    :pswitch_b9  #0x14c
    const-string p1, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    .line 379
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 381
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_273

    .line 376
    :pswitch_c8  #0x14b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 373
    :pswitch_cf  #0x14a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    goto/16 :goto_273

    .line 370
    :pswitch_dc  #0x149
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 367
    :pswitch_e3  #0x148
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    :pswitch_ea  #0x147
    const-string v0, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    .line 362
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_f6

    move v1, v2

    :cond_f6
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    .line 364
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_273

    .line 339
    :pswitch_100  #0x142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_273

    .line 351
    :pswitch_109  #0x141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto/16 :goto_273

    .line 354
    :pswitch_112  #0x140
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_273

    :pswitch_11b  #0x13f
    const-string p1, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    .line 357
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    .line 359
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_273

    .line 348
    :pswitch_12a  #0x13e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 345
    :pswitch_131  #0x13d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_273

    .line 328
    :pswitch_13a  #0x13a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandleFindPhoneLockRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandleFindPhoneLockRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandleFindPhoneLockRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_273

    .line 342
    :pswitch_15b  #0x139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 336
    :pswitch_162  #0x138
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 324
    :pswitch_169  #0x136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V

    goto/16 :goto_273

    .line 321
    :pswitch_176  #0x135
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 318
    :pswitch_17d  #0x134
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 315
    :pswitch_184  #0x132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_273

    .line 312
    :pswitch_18f  #0x131
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_273

    .line 309
    :pswitch_198  #0x130
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_273

    .line 438
    :cond_1a7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_FIND_PHONE_UNLOCK isFindPhoneLocked()= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_273

    .line 426
    :cond_1c8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFindPhoneAbstract = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3000()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3000()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object p1

    if-eqz p1, :cond_273

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFindPhoneLocked() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result p1

    if-eqz p1, :cond_212

    .line 430
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandleFindPhoneLockRunnalbe:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_273

    .line 432
    :cond_212
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandleFindPhoneLockRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_273

    .line 411
    :cond_21f
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result p1

    if-nez p1, :cond_22e

    .line 412
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNotificationUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$NotificationPreviewCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$NotificationPreviewCallback;->resetFaceLockAnim()V

    .line 413
    :cond_22e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result p1

    if-nez p1, :cond_259

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_259

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 414
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_259

    .line 415
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$FaceRecognitionCallbackForBouncer;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$FaceRecognitionCallbackForBouncer;->resetFaceRecogAnim()V

    .line 417
    :cond_259
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 418
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_273

    .line 306
    :cond_264
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_273

    .line 300
    :cond_26e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    :cond_273
    :goto_273
    return-void

    :pswitch_data_274
    .packed-switch 0x130
        :pswitch_198  #00000130
        :pswitch_18f  #00000131
        :pswitch_184  #00000132
    .end packed-switch

    :pswitch_data_27e
    .packed-switch 0x134
        :pswitch_17d  #00000134
        :pswitch_176  #00000135
        :pswitch_169  #00000136
    .end packed-switch

    :pswitch_data_288
    .packed-switch 0x138
        :pswitch_162  #00000138
        :pswitch_15b  #00000139
        :pswitch_13a  #0000013a
    .end packed-switch

    :pswitch_data_292
    .packed-switch 0x13d
        :pswitch_131  #0000013d
        :pswitch_12a  #0000013e
        :pswitch_11b  #0000013f
        :pswitch_112  #00000140
        :pswitch_109  #00000141
        :pswitch_100  #00000142
    .end packed-switch

    :pswitch_data_2a2
    .packed-switch 0x147
        :pswitch_ea  #00000147
        :pswitch_e3  #00000148
        :pswitch_dc  #00000149
        :pswitch_cf  #0000014a
        :pswitch_c8  #0000014b
        :pswitch_b9  #0000014c
        :pswitch_b0  #0000014d
        :pswitch_a9  #0000014e
        :pswitch_9a  #0000014f
        :pswitch_93  #00000150
        :pswitch_8c  #00000151
        :pswitch_7d  #00000152
        :pswitch_72  #00000153
    .end packed-switch

    :pswitch_data_2c0
    .packed-switch 0x209
        :pswitch_66  #00000209
        :pswitch_6b  #0000020a
        :pswitch_5f  #0000020b
        :pswitch_58  #0000020c
    .end packed-switch

    :pswitch_data_2cc
    .packed-switch 0x20f
        :pswitch_51  #0000020f
        :pswitch_40  #00000210
        :pswitch_34  #00000211
    .end packed-switch
.end method
