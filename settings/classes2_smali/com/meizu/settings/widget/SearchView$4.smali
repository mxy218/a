.class Lcom/meizu/settings/widget/SearchView$4;
.super Landroid/os/Handler;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SearchView;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView$4;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 360
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$4;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$500(Lcom/meizu/settings/widget/SearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result p1

    if-nez p1, :cond_25

    .line 361
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$4;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$600(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 362
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView$4;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SearchView;->access$500(Lcom/meizu/settings/widget/SearchView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$4;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SearchView;->access$600(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_25
    return-void
.end method
