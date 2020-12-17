.class Lcom/android/systemui/power/PowerUI$MzTemperatureDialog$1;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog$1;->this$1:Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 814
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog$1;->this$1:Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
