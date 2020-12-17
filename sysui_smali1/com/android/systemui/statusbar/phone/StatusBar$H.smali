.class public Lcom/android/systemui/statusbar/phone/StatusBar$H;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 1907
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1910
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x402

    if-eq v0, v1, :cond_39

    const/16 v1, 0x403

    if-eq v0, v1, :cond_33

    packed-switch v0, :pswitch_data_42

    goto :goto_40

    .line 1933
    :pswitch_e  #0x3eb
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_40

    .line 1923
    :pswitch_14  #0x3ea
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_1d

    .line 1924
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->openBlur()V

    .line 1927
    :cond_1d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_40

    .line 1930
    :pswitch_27  #0x3e9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_40

    .line 1919
    :pswitch_2d  #0x3e8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    goto :goto_40

    .line 1915
    :cond_33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyboardShortcuts()V

    goto :goto_40

    .line 1912
    :cond_39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleKeyboardShortcuts(I)V

    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x3e8
        :pswitch_2d  #000003e8
        :pswitch_27  #000003e9
        :pswitch_14  #000003ea
        :pswitch_e  #000003eb
    .end packed-switch
.end method
