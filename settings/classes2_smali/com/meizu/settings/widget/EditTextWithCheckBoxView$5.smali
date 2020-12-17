.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initEditText(Landroid/view/View;)V
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

    .line 178
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_9

    .line 183
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$402(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;Z)Z

    goto :goto_f

    .line 185
    :cond_9
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$402(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;Z)Z

    .line 187
    :goto_f
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$500(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    .line 188
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 189
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;->onFocusChanged(Z)V

    :cond_25
    return-void
.end method
