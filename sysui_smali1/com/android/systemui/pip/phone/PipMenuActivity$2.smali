.class Lcom/android/systemui/pip/phone/PipMenuActivity$2;
.super Landroid/os/Handler;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "stack_bounds"

    packed-switch v0, :pswitch_data_8a

    goto/16 :goto_88

    .line 170
    :pswitch_a  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 171
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_88

    .line 165
    :pswitch_15  #0x6
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z

    goto :goto_88

    .line 160
    :pswitch_1c  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 161
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v0, "dismiss_fraction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V

    goto :goto_88

    .line 153
    :pswitch_2c  #0x4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "actions"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 155
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz v0, :cond_47

    .line 156
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_49

    :cond_47
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 155
    :goto_49
    invoke-static {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V

    goto :goto_88

    .line 150
    :pswitch_4d  #0x3
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V

    goto :goto_88

    .line 147
    :pswitch_57  #0x2
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    goto :goto_88

    .line 138
    :pswitch_5d  #0x1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 139
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string p0, "menu_state"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/graphics/Rect;

    const-string p0, "movement_bounds"

    .line 141
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/graphics/Rect;

    const-string p0, "allow_timeout"

    .line 142
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p0, "resize_menu_on_show"

    .line 143
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 139
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_57  #00000002
        :pswitch_4d  #00000003
        :pswitch_2c  #00000004
        :pswitch_1c  #00000005
        :pswitch_15  #00000006
        :pswitch_a  #00000007
    .end packed-switch
.end method
