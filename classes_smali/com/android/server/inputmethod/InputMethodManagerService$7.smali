.class Lcom/android/server/inputmethod/InputMethodManagerService$7;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4410
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"  # Landroid/content/DialogInterface;
    .param p2, "whichButton"  # I

    .line 4413
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 4414
    return-void
.end method
