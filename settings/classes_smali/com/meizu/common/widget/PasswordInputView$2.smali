.class Lcom/meizu/common/widget/PasswordInputView$2;
.super Ljava/lang/Object;
.source "PasswordInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PasswordInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PasswordInputView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PasswordInputView;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 91
    iget-object p1, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {p1}, Lcom/meizu/common/widget/PasswordInputView;->access$000(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 92
    iget-object p0, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {p0}, Lcom/meizu/common/widget/PasswordInputView;->access$100(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_22

    .line 94
    :cond_17
    iget-object p0, p0, Lcom/meizu/common/widget/PasswordInputView$2;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {p0}, Lcom/meizu/common/widget/PasswordInputView;->access$100(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_22
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
