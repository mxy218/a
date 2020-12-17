.class Lcom/meizu/settings/language/FlymeCountryPicker$5;
.super Ljava/lang/Object;
.source "FlymeCountryPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;->createDeleteTextClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V
    .registers 2

    .line 631
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$5;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 635
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$5;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$200(Lcom/meizu/settings/language/FlymeCountryPicker;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 636
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$5;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$200(Lcom/meizu/settings/language/FlymeCountryPicker;)Landroid/widget/EditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method
