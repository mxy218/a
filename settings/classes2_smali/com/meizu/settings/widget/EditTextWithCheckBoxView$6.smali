.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 193
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$700(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;->onTextChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
