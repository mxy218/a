.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;
.super Ljava/lang/Object;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->enterDeviceName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

.field final synthetic val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 3

    .line 314
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 317
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 318
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x0

    const v0, 0x1020019

    if-lez p3, :cond_76

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_76

    const-string p3, "null"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_76

    .line 319
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->accept(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 320
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$700(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 321
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 p2, 0x1

    .line 322
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$800(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V

    goto :goto_8c

    .line 325
    :cond_48
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$700(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 326
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 327
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 329
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$500(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f121635

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 333
    :cond_76
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$700(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 334
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 335
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;->val$inputLayout:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->access$800(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V

    :cond_8c
    :goto_8c
    return-void
.end method
