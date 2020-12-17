.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 779
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 780
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_aa

    .line 801
    :pswitch_9  #0x10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V

    goto/16 :goto_aa

    .line 802
    :pswitch_18  #0xf
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V

    goto/16 :goto_aa

    .line 799
    :pswitch_23  #0xe
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_aa

    .line 798
    :pswitch_2c  #0xd
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto/16 :goto_aa

    .line 797
    :pswitch_33  #0xc
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    invoke-static {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V

    goto/16 :goto_aa

    .line 796
    :pswitch_40  #0xb
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_aa

    .line 795
    :pswitch_49  #0xa
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V

    goto :goto_aa

    .line 794
    :pswitch_53  #0x9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto :goto_aa

    .line 793
    :pswitch_5b  #0x8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    goto :goto_aa

    .line 792
    :pswitch_65  #0x7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1200(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_aa

    .line 791
    :pswitch_73  #0x6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/Condition;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1100(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/service/notification/Condition;)V

    goto :goto_aa

    .line 790
    :pswitch_7d  #0x5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$1000(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_aa

    .line 789
    :pswitch_85  #0x4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_8e

    goto :goto_8f

    :cond_8e
    move v1, v2

    :goto_8f
    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_aa

    .line 788
    :pswitch_93  #0x3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto :goto_aa

    .line 787
    :pswitch_99  #0x2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_aa

    .line 786
    :pswitch_a1  #0x1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :goto_aa
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a1  #00000001
        :pswitch_99  #00000002
        :pswitch_93  #00000003
        :pswitch_85  #00000004
        :pswitch_7d  #00000005
        :pswitch_73  #00000006
        :pswitch_65  #00000007
        :pswitch_5b  #00000008
        :pswitch_53  #00000009
        :pswitch_49  #0000000a
        :pswitch_40  #0000000b
        :pswitch_33  #0000000c
        :pswitch_2c  #0000000d
        :pswitch_23  #0000000e
        :pswitch_18  #0000000f
        :pswitch_9  #00000010
    .end packed-switch
.end method
