.class Lcom/google/android/material/textfield/TextInputLayout$6;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/TextInputLayout;->setEditTextHeightAndDummyDrawables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2

    .line 2036
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$6;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 2039
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout$6;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method
