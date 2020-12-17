.class Lcom/meizu/settings/icclock/EditPinPreference$1;
.super Ljava/lang/Object;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/icclock/EditPinPreference;->addTextChangeListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/icclock/EditPinPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/icclock/EditPinPreference;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/meizu/settings/icclock/EditPinPreference$1;->this$0:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/icclock/EditPinPreference$1;->this$0:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-static {v0}, Lcom/meizu/settings/icclock/EditPinPreference;->access$000(Lcom/meizu/settings/icclock/EditPinPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 130
    iget-object p0, p0, Lcom/meizu/settings/icclock/EditPinPreference$1;->this$0:Lcom/meizu/settings/icclock/EditPinPreference;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/icclock/EditPinPreference;->access$100(Lcom/meizu/settings/icclock/EditPinPreference;I)V

    :cond_11
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
