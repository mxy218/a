.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .registers 4

    .line 415
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 420
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b

    goto :goto_7f

    .line 441
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 442
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_7f

    .line 422
    :cond_1d
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object p1

    if-eqz p1, :cond_26

    goto :goto_7f

    .line 426
    :cond_26
    new-instance p1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    .line 428
    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    new-instance v2, Lcom/android/systemui/keyboard/BluetoothDialog;

    iget-object v3, v1, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/keyboard/BluetoothDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 431
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->enable_bluetooth_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->enable_bluetooth_message:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->enable_bluetooth_confirmation_ok:I

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 436
    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 437
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_7f
    :goto_7f
    return-void
.end method