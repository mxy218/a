.class Lcom/android/systemui/biometrics/BiometricDialogImpl$1;
.super Landroid/os/Handler;
.source "BiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Landroid/os/Looper;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricDialogImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 102
    :pswitch_1e  #0x9
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_83

    .line 99
    :pswitch_24  #0x8
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_83

    .line 96
    :pswitch_2a  #0x7
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_83

    .line 93
    :pswitch_30  #0x6
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    goto :goto_83

    .line 90
    :pswitch_36  #0x5
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V

    goto :goto_83

    .line 87
    :pswitch_44  #0x4
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V

    goto :goto_83

    .line 81
    :pswitch_4e  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_83

    .line 74
    :pswitch_5f  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_83

    .line 70
    :pswitch_78  #0x1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_78  #00000001
        :pswitch_5f  #00000002
        :pswitch_4e  #00000003
        :pswitch_44  #00000004
        :pswitch_36  #00000005
        :pswitch_30  #00000006
        :pswitch_2a  #00000007
        :pswitch_24  #00000008
        :pswitch_1e  #00000009
    .end packed-switch
.end method
