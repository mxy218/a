.class Lcom/meizu/settings/deviceinfo/DensityPreference$2;
.super Ljava/lang/Object;
.source "DensityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/DensityPreference;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/DensityPreference;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$2;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$2;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/DensityPreference;->access$000(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$2;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/DensityPreference;->access$100(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference$2;->this$0:Lcom/meizu/settings/deviceinfo/DensityPreference;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/DensityPreference;->access$000(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
