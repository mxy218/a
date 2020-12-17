.class Lcom/meizu/textinputlayout/EditTextWithClearIcon$1;
.super Ljava/lang/Object;
.source "EditTextWithClearIcon.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/textinputlayout/EditTextWithClearIcon;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/textinputlayout/EditTextWithClearIcon;


# direct methods
.method constructor <init>(Lcom/meizu/textinputlayout/EditTextWithClearIcon;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon$1;->this$0:Lcom/meizu/textinputlayout/EditTextWithClearIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon$1;->this$0:Lcom/meizu/textinputlayout/EditTextWithClearIcon;

    invoke-static {p0}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->access$000(Lcom/meizu/textinputlayout/EditTextWithClearIcon;)V

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
