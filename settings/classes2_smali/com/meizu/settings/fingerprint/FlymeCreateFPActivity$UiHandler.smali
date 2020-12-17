.class Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;
.super Landroid/os/Handler;
.source "FlymeCreateFPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$1;)V
    .registers 3

    .line 404
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 409
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x26

    const/4 v2, 0x0

    if-eq v0, v1, :cond_357

    const/4 v1, 0x4

    const v3, 0x7f120d8a

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_37c

    goto/16 :goto_37a

    .line 587
    :pswitch_11  #0x23
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    .line 588
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Z

    move-result p1

    if-eqz p1, :cond_37a

    .line 589
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 595
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120d90

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 596
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    goto/16 :goto_37a

    .line 554
    :pswitch_54  #0x22
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 555
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    .line 556
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, v4}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    .line 557
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v1, 0x7f120d93

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V

    .line 559
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2300(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/widget/TextAlphaAnimView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/widget/TextAlphaAnimView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120f9f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 565
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2002(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 572
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isScreenUnlockWithFingerprintEnabled()Z

    move-result p1

    if-nez p1, :cond_101

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    .line 573
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isAppUnlockWithFingerprintEnabled()Z

    move-result p1

    if-nez p1, :cond_101

    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    .line 574
    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->isDocumentUnlockWithFingerprintEnabled()Z

    move-result p1

    if-nez p1, :cond_101

    .line 576
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 577
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 578
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 581
    :cond_101
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1, v4}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    .line 583
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    goto/16 :goto_37a

    .line 412
    :pswitch_10d  #0x21
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_117

    return-void

    .line 416
    :cond_117
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)V

    .line 417
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 422
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x11

    const v7, 0x7f1207f6

    const v8, 0x7f120d8b

    if-eq v0, v6, :cond_269

    const/16 v6, 0x12

    if-ne v0, v6, :cond_13b

    goto/16 :goto_269

    :cond_13b
    const/16 v6, 0x13

    if-eq v0, v6, :cond_247

    const/16 v6, 0x16

    if-eq v0, v6, :cond_247

    const/16 v6, 0x3ed

    if-ne v0, v6, :cond_149

    goto/16 :goto_247

    :cond_149
    const/4 v6, 0x5

    if-ne v0, v6, :cond_16e

    .line 469
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d96

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 470
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 471
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1908(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I

    goto/16 :goto_312

    :cond_16e
    if-ne v0, v4, :cond_192

    .line 480
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d92

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 484
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1908(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I

    goto/16 :goto_312

    :cond_192
    if-ne v0, v5, :cond_1b6

    .line 494
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d8f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 498
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1908(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I

    goto/16 :goto_312

    :cond_1b6
    if-ne v0, v1, :cond_1c8

    .line 505
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d8e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 507
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, v4}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    goto/16 :goto_311

    :cond_1c8
    const/16 v1, 0x28

    if-ne v0, v1, :cond_21d

    .line 509
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2002(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 511
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d9e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_fingerprint_bundle"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f0

    const-string v1, "finger_exist_tips"

    .line 515
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 517
    :cond_1f0
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_212

    .line 518
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a025d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 519
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    return-void

    .line 525
    :cond_212
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_312

    .line 530
    :cond_21d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_23f

    .line 531
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 532
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getTipsEnrollFingerSideCount()I

    move-result v0

    if-lt p1, v0, :cond_23b

    .line 533
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_311

    :cond_23b
    const-string p1, ""

    goto/16 :goto_311

    .line 536
    :cond_23f
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_311

    .line 460
    :cond_247
    :goto_247
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d8d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 461
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1908(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)I

    goto/16 :goto_312

    .line 424
    :cond_269
    :goto_269
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 427
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getTipsEnrollFingerSideCount()I

    move-result v1

    if-lt v0, v1, :cond_2ab

    .line 429
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getTipsEnrollFingerSideCount()I

    move-result v1

    if-ne v0, v1, :cond_2a4

    .line 430
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v1, v5}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$502(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)I

    .line 431
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    move-result-object v1

    new-instance v5, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$1;

    invoke-direct {v5, p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler$1;-><init>(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;)V

    const-wide/16 v8, 0xd2

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :cond_2a4
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b1

    .line 440
    :cond_2ab
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    :goto_2b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.object:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "FlymeCreateFPActivity"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, v4}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    .line 445
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f4

    .line 446
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1302(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;F)F

    invoke-static {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1202(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;F)F

    .line 448
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1400(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V

    return-void

    .line 451
    :cond_2f4
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_309

    .line 452
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1500(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    :cond_309
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V

    move-object p1, v1

    :goto_311
    move v4, v2

    .line 541
    :goto_312
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1700(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32f

    if-nez v4, :cond_32f

    .line 542
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, v3}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2100(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;I)V

    .line 544
    :cond_32f
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_346

    if-nez v4, :cond_346

    .line 545
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2200(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    :cond_346
    if-eqz v4, :cond_37a

    .line 548
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p1, v2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1000(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    .line 549
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$1800(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->startShakeAnim(Landroid/view/View;)V

    goto :goto_37a

    .line 602
    :cond_357
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_369

    .line 603
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_375

    .line 604
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    goto :goto_375

    .line 607
    :cond_369
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    const v0, 0x7f120d99

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2900(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Ljava/lang/String;)V

    .line 609
    :cond_375
    :goto_375
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity$UiHandler;->this$0:Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-static {p0, v2}, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;->access$2600(Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;Z)V

    :cond_37a
    :goto_37a
    return-void

    nop

    :pswitch_data_37c
    .packed-switch 0x21
        :pswitch_10d  #00000021
        :pswitch_54  #00000022
        :pswitch_11  #00000023
    .end packed-switch
.end method
