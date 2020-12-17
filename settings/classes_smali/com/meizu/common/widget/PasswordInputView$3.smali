.class Lcom/meizu/common/widget/PasswordInputView$3;
.super Ljava/lang/Object;
.source "PasswordInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 99
    iput-object p1, p0, Lcom/meizu/common/widget/PasswordInputView$3;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/meizu/common/widget/PasswordInputView$3;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-static {p0}, Lcom/meizu/common/widget/PasswordInputView;->access$000(Lcom/meizu/common/widget/PasswordInputView;)Landroid/widget/EditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
