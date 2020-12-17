.class final Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;
.super Landroid/os/Handler;
.source "SoundAndVibrateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 537
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$1;)V
    .registers 3

    .line 525
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;-><init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " - "

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_122

    .line 603
    :pswitch_a  #0x9
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1100(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 604
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 605
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1100(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_122

    .line 563
    :pswitch_21  #0x8
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 565
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213e6

    .line 567
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5d

    .line 570
    :cond_59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 572
    :goto_5d
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_122

    .line 550
    :pswitch_68  #0x7
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 552
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)I

    move-result v0

    if-ne v0, v2, :cond_a0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v2}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$300(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213e5

    .line 554
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a4

    .line 557
    :cond_a0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 559
    :goto_a4
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_122

    .line 600
    :pswitch_af  #0x6
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$2000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    goto :goto_122

    .line 594
    :pswitch_b5  #0x5
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 595
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 596
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_122

    .line 588
    :pswitch_cb  #0x4
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 589
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 590
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1000(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_122

    .line 582
    :pswitch_e1  #0x3
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 583
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 584
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$900(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_122

    .line 576
    :pswitch_f7  #0x2
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 577
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 578
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_122

    .line 544
    :pswitch_10d  #0x1
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 545
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 546
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$200(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_122
    :goto_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_10d  #00000001
        :pswitch_f7  #00000002
        :pswitch_e1  #00000003
        :pswitch_cb  #00000004
        :pswitch_b5  #00000005
        :pswitch_af  #00000006
        :pswitch_68  #00000007
        :pswitch_21  #00000008
        :pswitch_a  #00000009
    .end packed-switch
.end method
