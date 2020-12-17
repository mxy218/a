.class Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;
.super Landroid/app/Dialog;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MzTemperatureDialog"
.end annotation


# instance fields
.field mCloseButton:Landroid/widget/TextView;

.field mContainer:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;I)V
    .registers 4

    .line 785
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 786
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 794
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 795
    sget p1, Lcom/android/systemui/R$layout;->flyme_temperature_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 796
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 797
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 798
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 799
    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 800
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d9

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 802
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 803
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 804
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 805
    sget p1, Lcom/android/systemui/R$id;->temperature_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->mContainer:Landroid/widget/RelativeLayout;

    .line 806
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v0, 0x602

    .line 807
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 810
    sget p1, Lcom/android/systemui/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->mCloseButton:Landroid/widget/TextView;

    .line 811
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->mCloseButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog$1;-><init>(Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 822
    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 824
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
