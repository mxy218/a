.class Lcom/meizu/settings/language/FlymeZonePicker$1;
.super Ljava/lang/Object;
.source "FlymeZonePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/language/FlymeZonePicker;->initListViewAndContainer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/meizu/settings/language/FlymeZonePicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeZonePicker;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 p1, 0x0

    .line 295
    :try_start_1
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez p2, :cond_15

    .line 296
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-virtual {p2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 299
    :cond_15
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 300
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-static {p2}, Lcom/meizu/settings/language/FlymeZonePicker;->access$200(Lcom/meizu/settings/language/FlymeZonePicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->clearFocus()V

    .line 301
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker$1;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeZonePicker;->access$200(Lcom/meizu/settings/language/FlymeZonePicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return p1
.end method
