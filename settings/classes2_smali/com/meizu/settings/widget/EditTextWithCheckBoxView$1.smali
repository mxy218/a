.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initTransparentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 59
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$000(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    .line 60
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$100(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    return-void

    .line 63
    :cond_f
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$200(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$300(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 65
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$300(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$300(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
